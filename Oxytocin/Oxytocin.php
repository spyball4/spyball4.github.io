<!DOCTYPE html>
<html>
<head>
    <title>Hello, World!</title>
</head>
<body>
    <?php
        echo "Some welcome hugs, World!";

        // Generate a random number between 1 and 10
        $randomNumber = rand(1, 10);

        // Check if the random number is even or odd
        if ($randomNumber % 2 == 0) {
            echo "The random number $randomNumber is even.";
        } else {
            echo "The random number $randomNumber is odd.";
        }
    ?>
</body>
</html>