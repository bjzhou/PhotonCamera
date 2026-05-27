.class public final synthetic Lkwv;
.super Ljava/lang/Object;

# interfaces
.implements Lkwx;


# instance fields
.field public final synthetic a:Lber;

.field private final synthetic b:I


# direct methods
.method public synthetic constructor <init>(Lber;I)V
    .locals 0

    iput p2, p0, Lkwv;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkwv;->a:Lber;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 4

    iget v0, p0, Lkwv;->b:I

    const/4 v1, 0x0

    const-string v2, "http://ns.google.com/photos/1.0/camera/"

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lkwv;->a:Lber;

    const-string v3, "MotionPhoto"

    invoke-interface {v0, v2, v3}, Lber;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-gtz v0, :cond_2

    goto :goto_1

    :pswitch_0
    iget-object v0, p0, Lkwv;->a:Lber;

    const-string v3, "MicroVideo"

    invoke-interface {v0, v2, v3}, Lber;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-gtz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    :cond_1
    :goto_0
    return-object v1

    :pswitch_1
    iget-object v0, p0, Lkwv;->a:Lber;

    const-string v1, "MicroVideoOffset"

    invoke-interface {v0, v2, v1}, Lber;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    :cond_2
    const/4 v0, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    :cond_3
    :goto_1
    return-object v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
