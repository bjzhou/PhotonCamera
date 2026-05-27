.class public final Lewk;
.super Lewj;


# instance fields
.field private final e:I


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lewj;-><init>()V

    const-string v0, "uniform mat4 uMvpMatrix;                   \nattribute vec4 aPosition;                   \nvoid main()                                 \n{                                           \n   gl_Position = uMvpMatrix * aPosition;    \n   gl_PointSize = 5.5;                      \n}                                           \n"

    const-string v1, "precision mediump float;                       \nuniform vec4 uDrawColor;                       \nvoid main()                                    \n{                                              \n  gl_FragColor = uDrawColor;                   \n}                                              \n"

    invoke-static {v0, v1}, Lewk;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lewk;->d:I

    const-string v1, "aPosition"

    invoke-static {v0, v1}, Lewk;->h(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lewk;->a:I

    iget v0, p0, Lewk;->d:I

    const-string v1, "uMvpMatrix"

    invoke-static {v0, v1}, Lewk;->i(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lewk;->c:I

    iget v0, p0, Lewk;->d:I

    const-string v1, "uDrawColor"

    invoke-static {v0, v1}, Lewk;->i(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lewk;->e:I

    return-void
.end method


# virtual methods
.method public final j([F)V
    .locals 5

    invoke-virtual {p0}, Lewj;->c()V

    iget v0, p0, Lewk;->e:I

    const/4 v1, 0x0

    aget v1, p1, v1

    const/4 v2, 0x1

    aget v2, p1, v2

    const/4 v3, 0x2

    aget v3, p1, v3

    const/4 v4, 0x3

    aget p1, p1, v4

    invoke-static {v0, v1, v2, v3, p1}, Landroid/opengl/GLES20;->glUniform4f(IFFFF)V

    return-void
.end method
