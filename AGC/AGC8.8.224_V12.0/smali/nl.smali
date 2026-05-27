.class public final synthetic Lnl;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/window/OnBackInvokedCallback;


# instance fields
.field public final synthetic a:Ljava/lang/Object;

.field private final synthetic b:I


# direct methods
.method public synthetic constructor <init>(Lfd;I)V
    .locals 0

    iput p2, p0, Lnl;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnl;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Runnable;I)V
    .locals 0

    iput p2, p0, Lnl;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnl;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lolz;I)V
    .locals 0

    iput p2, p0, Lnl;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnl;->a:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final onBackInvoked()V
    .locals 1

    iget v0, p0, Lnl;->b:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lnl;->a:Ljava/lang/Object;

    invoke-interface {v0}, Lolz;->a()Ljava/lang/Object;

    return-void

    :pswitch_0
    iget-object v0, p0, Lnl;->a:Ljava/lang/Object;

    check-cast v0, Lfd;

    invoke-virtual {v0}, Lfd;->G()Z

    return-void

    :pswitch_1
    iget-object v0, p0, Lnl;->a:Ljava/lang/Object;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
