.class public final synthetic Llbe;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lnph;


# direct methods
.method public synthetic constructor <init>(Lnph;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Llbe;->a:Lnph;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Llbe;->a:Lnph;

    invoke-static {}, Llbh;->j()Landroid/opengl/EGLSync;

    move-result-object v1

    invoke-static {v1}, Lktf;->p(Landroid/opengl/EGLSync;)Llcg;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnph;->e(Ljava/lang/Object;)Z

    return-void
.end method
