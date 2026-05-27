.class final Llbt;
.super Ljava/lang/Object;

# interfaces
.implements Llbx;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:F

.field final synthetic c:F


# direct methods
.method public constructor <init>(Ljava/lang/String;FF)V
    .locals 0

    iput-object p1, p0, Llbt;->a:Ljava/lang/String;

    iput p2, p0, Llbt;->b:F

    iput p3, p0, Llbt;->c:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Llcx;)V
    .locals 2

    iget-object v0, p0, Llbt;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Llcx;->b(Ljava/lang/String;)I

    move-result p1

    iget v0, p0, Llbt;->b:F

    iget v1, p0, Llbt;->c:F

    invoke-static {p1, v0, v1}, Landroid/opengl/GLES20;->glUniform2f(IFF)V

    return-void
.end method
