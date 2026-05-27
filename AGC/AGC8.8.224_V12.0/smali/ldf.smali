.class public final Lldf;
.super Ljava/lang/Object;

# interfaces
.implements Lkyk;


# static fields
.field public static final a:[F


# instance fields
.field public final b:Llbd;

.field private c:Lldc;

.field private d:Lldc;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x10

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    sput-object v0, Lldf;->a:[F

    return-void

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private constructor <init>(Llbd;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lldf;->c:Lldc;

    iput-object v0, p0, Lldf;->d:Lldc;

    iput-object p1, p0, Lldf;->b:Llbd;

    return-void
.end method

.method public static a(Llbd;)Lldf;
    .locals 1

    new-instance v0, Lldf;

    invoke-direct {v0, p0}, Lldf;-><init>(Llbd;)V

    return-object v0
.end method

.method private final g(Lldc;Lldc;)Lldc;
    .locals 1

    iget-object v0, p0, Lldf;->b:Llbd;

    invoke-static {v0}, Lldc;->o(Llbd;)Lloi;

    move-result-object v0

    invoke-static {p1}, Lktf;->l(Lkyc;)Llfg;

    move-result-object p1

    invoke-virtual {v0, p1}, Lloi;->b(Llfg;)V

    invoke-static {p2}, Lktf;->l(Lkyc;)Llfg;

    move-result-object p1

    invoke-virtual {v0, p1}, Lloi;->b(Llfg;)V

    invoke-virtual {v0}, Lloi;->d()Lldc;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public final b(Llbd;)V
    .locals 4

    iget-object v0, p0, Lldf;->b:Llbd;

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lldf;->b:Llbd;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Input to GLTextureCopier must be on the copier\'s GL context. Found input on context "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " but expect input to be on "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final c()V
    .locals 2

    iget-object v0, p0, Lldf;->c:Lldc;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Llbk;->a()Lkzf;

    iput-object v1, p0, Lldf;->c:Lldc;

    :cond_0
    iget-object v0, p0, Lldf;->d:Lldc;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Llbk;->a()Lkzf;

    iput-object v1, p0, Lldf;->d:Lldc;

    :cond_1
    return-void
.end method

.method public final close()V
    .locals 2

    iget-object v0, p0, Lldf;->c:Lldc;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Llbk;->close()V

    iput-object v1, p0, Lldf;->c:Lldc;

    :cond_0
    iget-object v0, p0, Lldf;->d:Lldc;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Llbk;->close()V

    iput-object v1, p0, Lldf;->d:Lldc;

    :cond_1
    return-void
.end method

.method public final d(Lldg;Z)Lldc;
    .locals 1

    const-string v0, "attribute vec2 aPosition;\nattribute vec2 aTexCoord;\nuniform mat4 uTransform;\nvarying vec2 texCoord;\nvoid main() {\n  texCoord = (uTransform * vec4(aTexCoord, 0.0, 1.0)).xy;\n  gl_Position = vec4(aPosition.xy, 0.0, 1.0);\n}"

    if-eqz p2, :cond_1

    iget-object p1, p0, Lldf;->d:Lldc;

    if-nez p1, :cond_0

    iget-object p1, p0, Lldf;->b:Llbd;

    invoke-static {p1, v0}, Lldc;->h(Llbd;Ljava/lang/String;)Lldc;

    move-result-object p1

    iget-object p2, p0, Lldf;->b:Llbd;

    const-string v0, "#extension GL_OES_EGL_image_external : require\nprecision mediump float;\nuniform samplerExternalOES uImgTex;\nvarying vec2 texCoord;\nvoid main() {\n  gl_FragColor = texture2D(uImgTex, texCoord);\n}"

    invoke-static {p2, v0}, Lldc;->b(Llbd;Ljava/lang/String;)Lldc;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lldf;->g(Lldc;Lldc;)Lldc;

    move-result-object p1

    iput-object p1, p0, Lldf;->d:Lldc;

    :cond_0
    iget-object p1, p0, Lldf;->d:Lldc;

    return-object p1

    :cond_1
    iget-object p2, p0, Lldf;->c:Lldc;

    if-nez p2, :cond_3

    iget p1, p1, Lldg;->b:I

    const/4 p2, 0x3

    if-lt p1, p2, :cond_2

    iget-object p1, p0, Lldf;->b:Llbd;

    const-string p2, "#version 300 es\nin vec2 aPosition;\nin vec2 aTexCoord;\nuniform mat4 uTransform;\nout vec2 texCoord;\nvoid main() {\n  texCoord = (uTransform * vec4(aTexCoord, 0.0, 1.0)).xy;\n  gl_Position = vec4(aPosition.xy, 0.0, 1.0);\n}"

    invoke-static {p1, p2}, Lldc;->h(Llbd;Ljava/lang/String;)Lldc;

    move-result-object p1

    iget-object p2, p0, Lldf;->b:Llbd;

    const-string v0, "#version 300 es\nprecision mediump float;\nuniform sampler2D uImgTex;\nin vec2 texCoord;\nout vec4 outColor;\nvoid main() {\n    outColor = texture(uImgTex, texCoord);\n}"

    invoke-static {p2, v0}, Lldc;->b(Llbd;Ljava/lang/String;)Lldc;

    move-result-object p2

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lldf;->b:Llbd;

    invoke-static {p1, v0}, Lldc;->h(Llbd;Ljava/lang/String;)Lldc;

    move-result-object p1

    iget-object p2, p0, Lldf;->b:Llbd;

    const-string v0, "precision mediump float;\nuniform sampler2D uImgTex;\nvarying vec2 texCoord;\nvoid main() {\n    gl_FragColor = texture2D(uImgTex, texCoord);\n}"

    invoke-static {p2, v0}, Lldc;->b(Llbd;Ljava/lang/String;)Lldc;

    move-result-object p2

    :goto_0
    invoke-direct {p0, p1, p2}, Lldf;->g(Lldc;Lldc;)Lldc;

    move-result-object p1

    iput-object p1, p0, Lldf;->c:Lldc;

    :cond_3
    iget-object p1, p0, Lldf;->c:Lldc;

    return-object p1
.end method

.method public final e(Llcd;Lldc;)V
    .locals 1

    sget-object v0, Lldf;->a:[F

    invoke-virtual {p0, p1, p2, v0}, Lldf;->f(Llcd;Lldc;[F)V

    return-void
.end method

.method public final f(Llcd;Lldc;[F)V
    .locals 3

    iget-object v0, p1, Llbk;->b:Llbd;

    invoke-virtual {p0, v0}, Lldf;->b(Llbd;)V

    iget-object v0, p2, Llbk;->b:Llbd;

    invoke-virtual {p0, v0}, Lldf;->b(Llbd;)V

    iget-object v0, p2, Llbk;->b:Llbd;

    invoke-static {v0}, Llcl;->a(Llbd;)Lldh;

    move-result-object v0

    invoke-static {v0}, Llby;->i(Lldh;)Llpu;

    move-result-object v0

    iget-object v1, p0, Lldf;->b:Llbd;

    invoke-interface {v1}, Llbd;->e()Lldg;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Lldf;->d(Lldg;Z)Lldc;

    move-result-object v1

    invoke-virtual {v0, v1}, Llpu;->c(Lldc;)Llby;

    move-result-object v0

    invoke-virtual {v0, p1}, Llby;->b(Llcd;)V

    invoke-virtual {v0, p3}, Llby;->g([F)V

    const-string p1, "aPosition"

    const/4 p3, 0x0

    invoke-virtual {v0, p1, p3}, Llby;->a(Ljava/lang/String;I)V

    const-string p1, "aTexCoord"

    invoke-virtual {v0, p1, v2}, Llby;->a(Ljava/lang/String;I)V

    invoke-virtual {v0, p2}, Llby;->k(Lldc;)V

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lldf;->b:Llbd;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "GLTextureCopier["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "]"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
