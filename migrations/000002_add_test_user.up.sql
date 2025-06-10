-- Добавляем тестового пользователя с хешированным паролем (bcrypt hash для 'password' и 'password123')
INSERT INTO
    users (username, email, password, points)
VALUES
    (
        'testuser',
        'test@example.com',
        '$2a$10$Cqa1U0ddhdpHc9lfYYIIUu75TIou3yr8SuXRUI187u2C9kymI7IPq',
        0
    ),
    (
        'testuser2',
        'test2@example.com',
        '$2a$10$oKuJjYoLjhW8enjaf2hHBuD.w/HhHPxoupzMhh6gvyjiwakagLGHm',
        0
    ) ON CONFLICT (username) DO NOTHING;