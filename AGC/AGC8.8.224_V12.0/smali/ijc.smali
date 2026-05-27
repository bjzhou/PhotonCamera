.class final Lijc;
.super Lifk;


# instance fields
.field final synthetic a:Lije;


# direct methods
.method public constructor <init>(Lije;)V
    .locals 0

    iput-object p1, p0, Lijc;->a:Lije;

    invoke-direct {p0}, Lifk;-><init>()V

    return-void
.end method


# virtual methods
.method public final onShutterButtonClick()V
    .locals 1

    iget-object v0, p0, Lijc;->a:Lije;

    iget-object v0, v0, Lije;->j:Logd;

    invoke-interface {v0}, Logd;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lclc;

    invoke-virtual {v0}, Lclc;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lijc;->a:Lije;

    iget-object v0, v0, Lije;->j:Logd;

    invoke-interface {v0}, Logd;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lclc;

    invoke-virtual {v0}, Lclc;->b()V

    iget-object v0, p0, Lijc;->a:Lije;

    iget-object v0, v0, Lije;->j:Logd;

    invoke-interface {v0}, Logd;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lclc;

    invoke-virtual {v0}, Lclc;->a()V

    :cond_0
    return-void
.end method
