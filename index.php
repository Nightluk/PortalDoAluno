<?php

include('inc/conexao.php');

$sql = "SELECT * FROM tb_alunos";

$resultado = $conexao->query($sql);

/* if($resultado->num_rows>0){
    while($tb_ALUNOS = $resultado->fetch_assoc()){
        echo "<br>RM: " . $tb_alunos['ds_RM'];
        echo " Nome: " . $tb_alunos['nm_ALUNO'];
        echo " E-mail: " . $tb_alunos['ds_EMAIL'];
        echo "<br>";
    }
}else{
    echo "Nenhum aluno encontrado!";
}
*/

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
                <li class="nav-item"><a href="index.php" class="nav-link active" aria-current="page">Alunos</a></li>
                <li class="nav-item"><a href="professores.php" class="nav-link">Professores</a></li>
                <li class="nav-item"><a href="materias.php" class="nav-link">Materias</a></li>
            </ul>
        </header>
    </div>

    <div class="container">
        <div class="row">
            <div class="col-sm-12">
                <table class="table table-striped">
                    <!-- HEADER -->
                    <tr>
                        <th>RM</th>
                        <th>NOME</th>
                        <th>E-MAIL</th>
                    </tr>
                    <!-- VALORES -->
                    <?php
                    if ($resultado->num_rows > 0) {
                        while ($tb_alunos = $resultado->fetch_assoc()) {
                            echo "<tr>";
                            echo "<td>" . $tb_alunos['ds_rm'] . "</td>";
                            echo "<td>" . $tb_alunos['nm_aluno'] . "</td>";
                            echo "<td>" . $tb_alunos['ds_email'] . "</td>";
                            echo "</tr>";
                        }
                    }
                    ?>
                </table>
            </div>
        </div>
    </div>


    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.8/dist/umd/popper.min.js" integrity="sha384-I7E8VVD/ismYTF4hNIPjVp/Zjvgyol6VFvRkX/vR+Vc4jQkC+hVqc2pM8ODewa9r" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/js/bootstrap.min.js" integrity="sha384-G/EV+4j2dNv+tEPo3++6LCgdCROaejBqfUeNjuKAiuXbjrxilcCdDz6ZAVfHWe1Y" crossorigin="anonymous"></script>
</body>

</html>