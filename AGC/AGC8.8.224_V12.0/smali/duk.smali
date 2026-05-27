.class public final synthetic Lduk;
.super Ljava/lang/Object;

# interfaces
.implements Ldvg;


# instance fields
.field public final synthetic a:Lgsm;

.field private final synthetic b:I


# direct methods
.method public synthetic constructor <init>(Lgsm;I)V
    .locals 0

    iput p2, p0, Lduk;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lduk;->a:Lgsm;

    return-void
.end method


# virtual methods
.method public final a(J)F
    .locals 2

    iget v0, p0, Lduk;->b:I

    const/high16 v1, 0x7fc00000    # Float.NaN

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lduk;->a:Lgsm;

    invoke-interface {v0, p1, p2}, Lgsm;->c(J)Lgsl;

    move-result-object p1

    if-eqz p1, :cond_3

    iget p1, p1, Lgsl;->b:F

    return p1

    :pswitch_0
    iget-object v0, p0, Lduk;->a:Lgsm;

    invoke-interface {v0, p1, p2}, Lgsm;->c(J)Lgsl;

    move-result-object p1

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    iget-object p1, p1, Lgsl;->p:Lmqp;

    invoke-virtual {p1}, Lmqp;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lmqp;->c()Ljava/lang/Object;

    move-result-object p1

    move-object p2, p1

    check-cast p2, Lgsx;

    goto :goto_0

    :cond_0
    :goto_0
    if-eqz p2, :cond_1

    iget p1, p2, Lgsx;->b:F

    return p1

    :cond_1
    return v1

    :pswitch_1
    iget-object v0, p0, Lduk;->a:Lgsm;

    invoke-interface {v0, p1, p2}, Lgsm;->c(J)Lgsl;

    move-result-object p1

    if-eqz p1, :cond_2

    iget p1, p1, Lgsl;->m:F

    return p1

    :cond_2
    return v1

    :cond_3
    return v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
