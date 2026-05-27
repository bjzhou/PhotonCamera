.class public final synthetic Liru;
.super Ljava/lang/Object;

# interfaces
.implements Lmqs;


# instance fields
.field public final synthetic a:Ljava/lang/Object;

.field private final synthetic b:I


# direct methods
.method public synthetic constructor <init>(Lisi;I)V
    .locals 0

    iput p2, p0, Liru;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Liru;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lkaf;I)V
    .locals 0

    iput p2, p0, Liru;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Liru;->a:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Z
    .locals 5

    iget v0, p0, Liru;->b:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Liru;->a:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    check-cast v0, Lisi;

    iget-object v0, v0, Lisi;->h:Ljwb;

    invoke-interface {v0}, Ljwb;->bm()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    cmpg-float p1, p1, v0

    if-gez p1, :cond_2

    return v1

    :pswitch_0
    iget-object v0, p0, Liru;->a:Ljava/lang/Object;

    check-cast p1, Lkaf;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Ljzr;->j(Lkaf;)Ljzr;

    move-result-object v3

    sget-object v4, Ljzr;->b:Ljzr;

    invoke-virtual {v3, v4}, Ljzr;->m(Ljzr;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p1}, Lkaf;->e()Lkaf;

    move-result-object v3

    iget v3, v3, Lkaf;->a:I

    check-cast v0, Lkaf;

    iget v4, v0, Lkaf;->a:I

    if-gt v3, v4, :cond_0

    invoke-virtual {p1}, Lkaf;->e()Lkaf;

    move-result-object p1

    iget p1, p1, Lkaf;->b:I

    iget v0, v0, Lkaf;->b:I

    if-gt p1, v0, :cond_0

    return v1

    :cond_0
    return v2

    :pswitch_1
    iget-object v0, p0, Liru;->a:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    check-cast v0, Lisi;

    iget-object v0, v0, Lisi;->h:Ljwb;

    invoke-interface {v0}, Ljwb;->bm()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    cmpl-float p1, p1, v0

    if-lez p1, :cond_1

    return v1

    :cond_1
    return v2

    :cond_2
    return v2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
