.class public final synthetic Ldrp;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Ldru;

.field public final synthetic b:Lnph;


# direct methods
.method public synthetic constructor <init>(Ldru;Lnph;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldrp;->a:Ldru;

    iput-object p2, p0, Ldrp;->b:Lnph;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Ldrp;->a:Ldru;

    iget-object v1, p0, Ldrp;->b:Lnph;

    iget-object v0, v0, Ldru;->a:Llbd;

    invoke-interface {v0}, Llbd;->i()Lldc;

    move-result-object v0

    invoke-virtual {v0}, Llbk;->c()Llcv;

    move-result-object v0

    check-cast v0, Llcn;

    invoke-interface {v0}, Llcn;->e()Landroid/opengl/EGLContext;

    move-result-object v0

    invoke-virtual {v0}, Landroid/opengl/EGLContext;->getNativeHandle()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v1, v0}, Lnph;->e(Ljava/lang/Object;)Z

    return-void
.end method
