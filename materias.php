<?php

include('inc/conexao.php');

$sql = "SELECT
            m.nm_materia,
            GROUP_CONCAT(
                p.nm_professor
                ORDER BY p.nm_professor
                SEPARATOR ' e '
            ) AS professores
        FROM tb_materias m
        INNER JOIN tb_professores_materias pm
            ON m.cd_materia = pm.cd_materia
        INNER JOIN tb_professores p
            ON pm.cd_professor = p.cd_professor
        GROUP BY m.cd_materia, m.nm_materia
        ORDER BY m.cd_materia";

$resultado = mysqli_query($conexao, $sql);
?>
<!DOCTYPE html>
<html lang="pt-br">

<head>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-sRIl4kxILFvY47J16cr9ZwB07vP4J8+LH7qKQnuqkuIAvNWLzeN8tE5YBujZqJLB" crossorigin="anonymous">
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Portal do aluno</title>
    <link rel="stylesheet" href="estilo.css">
</head>

<body>
    <div class="container">
        <header class="d-flex flex-wrap justify-content-center py-3 mb-4 border-bottom">
            <a href="#" class="d-flex align-items-center mb-3 mb-md-0 me-md-auto text-dark text-decoration-none">
                <svg class="bi me-2" width="40" height="32">
                    <use xlink:href="index.php"></use>
                </svg>
                <img src="./assets/graduate.png" /><span class="fs-4">Portal do aluno</span>
            </a>

            <ul class="nav nav-pills">
                <li class="nav-item"><a href="index.php" class="nav-link">Alunos</a></li>
                <li class="nav-item"><a href="professores.php" class="nav-link">Professores</a></li>
                <li class="nav-item"><a href="materias.php" class="nav-link active" aria-current="page">Materias</a></li>
            </ul>
        </header>
    </div>

    <div class="container">
        <div class="row">
            <div class="col-sm-12">
                <table class="table table-striped">
                    <tr>
                        <th>Matéria</th>
                        <th>Professores ministrantes</th>
                    </tr>
                    <?php
                    if (mysqli_num_rows($resultado) > 0) {
                        while ($linha = mysqli_fetch_assoc($resultado)) {
                    ?>
                            <tr>
                                <td>
                                    <?php echo $linha['nm_materia']; ?>
                                </td>
                                <td>
                                    <?php echo $linha['professores']; ?>
                                </td>
                            </tr>
                    <?php
                        }
                    }
                    ?>
                </table>
            </div>
        </div>
    </div>




    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.8/dist/umd/popper.min.js" integrity="sha384-I7E8VVD+4hNIPjVp/Zjvgyol6VFvRkX/vR+Vc4jQkC+hVqc2pM8ODewa9r" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/js/bootstrap.min.js" integrity="sha384-G/EV+4j2dNv+tEPo3++6LCgdCROaejBqfUeNjuKAiuXbjrxilcCdDz6ZAVfHWe1Y" crossorigin="anonymous"></script>
</body>

</html>