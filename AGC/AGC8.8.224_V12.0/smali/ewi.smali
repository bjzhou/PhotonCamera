.class public final Lewi;
.super Ljava/lang/Exception;


# static fields
.field private static final a:Lnak;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "com/google/android/apps/camera/legacy/lightcycle/opengl/OpenGLException"

    invoke-static {v0}, Lnak;->h(Ljava/lang/String;)Lnak;

    move-result-object v0

    sput-object v0, Lewi;->a:Lnak;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 3

    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    sget-object v0, Lewi;->a:Lnak;

    invoke-virtual {v0}, Lnaf;->b()Lnaz;

    move-result-object v0

    const-string v1, "%s"

    const/16 v2, 0x7e1

    invoke-static {v0, v1, p1, v2, p0}, Ld;->i(Lnaz;Ljava/lang/String;Ljava/lang/Object;CLjava/lang/Throwable;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    sget-object v0, Lewi;->a:Lnak;

    invoke-virtual {v0}, Lnaf;->b()Lnaz;

    move-result-object v0

    check-cast v0, Lnah;

    invoke-interface {v0, p0}, Lnah;->h(Ljava/lang/Throwable;)Lnaz;

    move-result-object v0

    check-cast v0, Lnah;

    const/16 v1, 0x7e2

    invoke-interface {v0, v1}, Lnah;->G(I)Lnaz;

    move-result-object v0

    check-cast v0, Lnah;

    const-string v1, "%s : %s"

    invoke-interface {v0, v1, p1, p2}, Lnah;->z(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public static a(Ljava/lang/String;)V
    .locals 4

    invoke-static {}, Landroid/opengl/GLES20;->glGetError()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v1, Lewi;

    invoke-static {v0}, Landroid/opengl/GLU;->gluErrorString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ": glError "

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " "

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Lewi;-><init>(Ljava/lang/String;)V

    throw v1
.end method
