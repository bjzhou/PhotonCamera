.class final Lhpl;
.super Lifk;


# instance fields
.field final synthetic a:Lhpq;

.field final synthetic b:Ljew;


# direct methods
.method public constructor <init>(Lhpq;Ljew;[B)V
    .locals 0

    iput-object p1, p0, Lhpl;->a:Lhpq;

    iput-object p2, p0, Lhpl;->b:Ljew;

    invoke-direct {p0}, Lifk;-><init>()V

    return-void
.end method


# virtual methods
.method public final onShutterButtonClick()V
    .locals 1

    iget-object v0, p0, Lhpl;->b:Ljew;

    invoke-virtual {v0}, Ljew;->M()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lhpl;->a:Lhpq;

    iget-object v0, v0, Lhpq;->V:Ljes;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljes;->b()V

    :cond_0
    return-void
.end method

.method public final onShutterButtonDown()V
    .locals 1

    iget-object v0, p0, Lhpl;->b:Ljew;

    invoke-virtual {v0}, Ljew;->M()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lhpl;->a:Lhpq;

    iget-object v0, v0, Lhpq;->V:Ljes;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljes;->b()V

    :cond_0
    return-void
.end method
