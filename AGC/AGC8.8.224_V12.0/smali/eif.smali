.class public final Leif;
.super Lifk;


# instance fields
.field final synthetic a:Leio;

.field final synthetic b:Ldhi;

.field final synthetic c:Ljew;


# direct methods
.method public constructor <init>(Ljew;Leio;Ldhi;[B)V
    .locals 0

    iput-object p1, p0, Leif;->c:Ljew;

    iput-object p2, p0, Leif;->a:Leio;

    iput-object p3, p0, Leif;->b:Ldhi;

    invoke-direct {p0}, Lifk;-><init>()V

    return-void
.end method


# virtual methods
.method public final onShutterButtonClick()V
    .locals 2

    iget-object v0, p0, Leif;->c:Ljew;

    invoke-virtual {v0}, Ljew;->M()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Leif;->b:Ldhi;

    sget-object v1, Ldho;->a:Ldhk;

    invoke-interface {v0}, Ldhi;->e()V

    return-void

    :cond_0
    iget-object v0, p0, Leif;->a:Leio;

    invoke-virtual {v0}, Leio;->g()V

    return-void
.end method

.method public final onShutterButtonDown()V
    .locals 1

    iget-object v0, p0, Leif;->c:Ljew;

    invoke-virtual {v0}, Ljew;->M()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Leif;->a:Leio;

    invoke-virtual {v0}, Leio;->g()V

    :cond_0
    return-void
.end method
