.class public final synthetic Lirv;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lisi;

.field public final synthetic b:Z


# direct methods
.method public synthetic constructor <init>(Lisi;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lirv;->a:Lisi;

    iput-boolean p2, p0, Lirv;->b:Z

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    iget-object p1, p0, Lirv;->a:Lisi;

    iget-boolean v0, p0, Lirv;->b:Z

    iget-object v1, p1, Lisi;->E:Lita;

    invoke-virtual {p1, v0}, Lisi;->ac(Z)F

    move-result v2

    const/4 v3, 0x6

    invoke-virtual {v1, v2, v3}, Lisk;->d(FI)V

    if-nez v0, :cond_2

    invoke-virtual {p1}, Lisi;->Y()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p1, Lisi;->ak:Ljew;

    const-string v1, "wide_selfie_tooltip_display_count"

    invoke-virtual {v0, v1}, Ljew;->X(Ljava/lang/String;)I

    move-result v0

    const/4 v2, 0x2

    if-gt v0, v2, :cond_1

    iget-object v0, p1, Lisi;->ak:Ljew;

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Ljew;->aa(Ljava/lang/String;I)V

    :cond_1
    iget-object v0, p1, Lisi;->I:Lmqp;

    invoke-virtual {v0}, Lmqp;->g()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p1, Lisi;->I:Lmqp;

    invoke-virtual {v0}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkad;

    invoke-interface {v0}, Lkad;->close()V

    sget-object v0, Lmpx;->a:Lmpx;

    iput-object v0, p1, Lisi;->I:Lmqp;

    return-void

    :cond_2
    :goto_0
    return-void
.end method
