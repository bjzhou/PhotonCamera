.class public final synthetic Lirz;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field public final synthetic a:Ljava/lang/Object;

.field private final synthetic b:I


# direct methods
.method public synthetic constructor <init>(Lisi;I)V
    .locals 0

    iput p2, p0, Lirz;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lirz;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lixz;I)V
    .locals 0

    iput p2, p0, Lirz;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lirz;->a:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 4

    iget p1, p0, Lirz;->b:I

    const/4 v0, 0x3

    const/4 v1, 0x0

    const/4 v2, 0x1

    packed-switch p1, :pswitch_data_0

    iget-object p1, p0, Lirz;->a:Ljava/lang/Object;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    if-eq v3, v0, :cond_4

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p2

    if-ne p2, v2, :cond_5

    goto :goto_0

    :pswitch_0
    iget-object p1, p0, Lirz;->a:Ljava/lang/Object;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    if-eq v3, v0, :cond_0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p2

    if-ne p2, v2, :cond_1

    :cond_0
    check-cast p1, Lixz;

    iput-boolean v1, p1, Lixz;->b:Z

    invoke-virtual {p1}, Lixz;->b()V

    :cond_1
    return v1

    :pswitch_1
    iget-object p1, p0, Lirz;->a:Ljava/lang/Object;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p2

    if-ne p2, v2, :cond_2

    check-cast p1, Lisi;

    iget-object p1, p1, Lisi;->E:Lita;

    invoke-virtual {p1}, Lisk;->cq()V

    :cond_2
    return v1

    :pswitch_2
    iget-object p1, p0, Lirz;->a:Ljava/lang/Object;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p2

    if-ne p2, v2, :cond_3

    check-cast p1, Lisi;

    iget-object p1, p1, Lisi;->E:Lita;

    invoke-virtual {p1}, Lisk;->b()V

    :cond_3
    return v2

    :cond_4
    :goto_0
    check-cast p1, Lixz;

    iput-boolean v1, p1, Lixz;->c:Z

    invoke-virtual {p1}, Lixz;->b()V

    :cond_5
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
