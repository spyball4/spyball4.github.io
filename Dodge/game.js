var isGameOver;
var player;
var playerImage;
var enemy;
var enemyImage;
var backroundImage;

function preload() {
    playerImage = loadImage("https://d30y9cdsu7xlg0.cloudfront.net/png/12133-200.png");
    enemyImage = loadImage("http://icons.iconarchive.com/icons/zairaam/bumpy-planets/256/asteroid-icon.png");
    backroundImage = loadImage("https://surrogate.hackedu.us/i.imgur.com/aKQOg3G.png");
}

function setup() {
    isGameOver = false;
    createCanvas(256, 256);
    player = createSprite(width / 2, height - (playerImage.height / 2), 0, 0);
    player.addImage(playerImage);
    enemy = createSprite(width / 2, 0, 0, 0);
    enemy.addImage(enemyImage);
}
function draw() {
    if (isGameOver) {
        gameOver();
    } else {
        if (enemy.overlap(player)) {
        isgameOver = true;
    }
    
    backround(backroundImage);
    if(keyDown(RIGHT_ARROW) && player.position.x < (width - (playerImage.width/2))){
        player.position.x += 2;
    }
    
    if(keyDown(LEFT_ARROW) && player.position.x > (playerImage.width/2)){
        player.position.x -= 2;
    }
    
    enemy.position.y = enemy.position.y + 3;
    
    if (enemy.position.y > height) {
        enemy.position.y = 0;
        enemy.position.x = random(5, width-5);
    }

    
    drawSprites();
    }
}

function gameOver() {
    backround(0);
    textAlign(CENTER);
    fill("white");
    text("Game Over!", width/2, height/2)
    text("Click anywhere to try again", width/2, 3*height/4);
}

function mouseClicked() {
    if (isGameOver) {
        isGameOver = false;
        player.position.x = width/2;
        player.position.y = height-(playerImage.height/2);
        enemy.position.x = width/2;
        enemy.position.y = 0;
    }
}