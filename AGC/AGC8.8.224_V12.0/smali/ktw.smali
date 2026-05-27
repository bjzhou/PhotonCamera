.class public final synthetic Lktw;
.super Ljava/lang/Object;

# interfaces
.implements Lktx;


# instance fields
.field public final synthetic a:Lkty;

.field public final synthetic b:Lktx;

.field private final synthetic c:I


# direct methods
.method public synthetic constructor <init>(Lkty;Lktx;I)V
    .locals 0

    iput p3, p0, Lktw;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lktw;->a:Lkty;

    iput-object p2, p0, Lktw;->b:Lktx;

    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 4

    iget p1, p0, Lktw;->c:I

    packed-switch p1, :pswitch_data_0

    iget-object p1, p0, Lktw;->a:Lkty;

    iget-object v0, p0, Lktw;->b:Lktx;

    invoke-static {}, Llho;->t()V

    iget-object v1, p1, Lkty;->a:Lkua;

    invoke-interface {v1}, Lkua;->f()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object p1, p1, Lkty;->a:Lkua;

    invoke-interface {p1}, Lkua;->g()I

    move-result p1

    goto :goto_0

    :pswitch_0
    iget-object p1, p0, Lktw;->a:Lkty;

    iget-object v0, p0, Lktw;->b:Lktx;

    invoke-virtual {p1}, Lkty;->e()I

    move-result p1

    invoke-interface {v0, p1}, Lktx;->a(I)V

    return-void

    :pswitch_1
    iget-object p1, p0, Lktw;->a:Lkty;

    iget-object v0, p0, Lktw;->b:Lktx;

    invoke-virtual {p1}, Lkty;->f()I

    move-result p1

    invoke-interface {v0, p1}, Lktx;->a(I)V

    return-void

    :cond_0
    invoke-virtual {p1}, Lkty;->a()Liun;

    move-result-object v1

    iget v2, v1, Liun;->a:I

    and-int/lit8 v2, v2, 0x1

    const/16 v3, 0xd

    if-eqz v2, :cond_1

    iget-object p1, p1, Lkty;->a:Lkua;

    invoke-interface {p1}, Lkua;->a()I

    move-result p1

    iget v1, v1, Liun;->b:I

    if-lt p1, v1, :cond_1

    const/4 p1, 0x2

    goto :goto_0

    :cond_1
    const/16 p1, 0xd

    :goto_0
    invoke-interface {v0, p1}, Lktx;->a(I)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
