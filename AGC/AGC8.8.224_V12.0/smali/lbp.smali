.class final Llbp;
.super Ljava/lang/Object;

# interfaces
.implements Llbx;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:[F

.field private final synthetic c:I


# direct methods
.method public constructor <init>(Ljava/lang/String;[FI)V
    .locals 0

    iput p3, p0, Llbp;->c:I

    iput-object p1, p0, Llbp;->a:Ljava/lang/String;

    iput-object p2, p0, Llbp;->b:[F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>([FI)V
    .locals 0

    iput p2, p0, Llbp;->c:I

    const-string p2, "uTransform"

    iput-object p2, p0, Llbp;->a:Ljava/lang/String;

    iput-object p1, p0, Llbp;->b:[F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Llcx;)V
    .locals 3

    iget v0, p0, Llbp;->c:I

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Llbp;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Llcx;->b(Ljava/lang/String;)I

    move-result p1

    const/4 v0, 0x1

    iget-object v2, p0, Llbp;->b:[F

    invoke-static {p1, v0, v1, v2, v1}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    return-void

    :pswitch_0
    iget-object v0, p0, Llbp;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Llcx;->b(Ljava/lang/String;)I

    move-result p1

    const/16 v0, 0x80

    iget-object v2, p0, Llbp;->b:[F

    invoke-static {p1, v0, v2, v1}, Landroid/opengl/GLES20;->glUniform1fv(II[FI)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
