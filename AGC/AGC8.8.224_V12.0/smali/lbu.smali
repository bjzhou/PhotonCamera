.class public final Llbu;
.super Ljava/lang/Object;

# interfaces
.implements Llbx;


# instance fields
.field final synthetic a:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "innerColor"

    iput-object v0, p0, Llbu;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Llcx;)V
    .locals 3

    iget-object v0, p0, Llbu;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Llcx;->b(Ljava/lang/String;)I

    move-result p1

    const v0, 0x3f56c8b4    # 0.839f

    const v1, 0x3ec6a7f0    # 0.388f

    const v2, 0x3f7df3b6    # 0.992f

    invoke-static {p1, v2, v0, v1}, Landroid/opengl/GLES20;->glUniform3f(IFFF)V

    return-void
.end method
