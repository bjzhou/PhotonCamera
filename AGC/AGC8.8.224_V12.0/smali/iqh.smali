.class public final synthetic Liqh;
.super Ljava/lang/Object;

# interfaces
.implements Litl;


# instance fields
.field public final synthetic a:Ljava/lang/Object;

.field private final synthetic b:I


# direct methods
.method public synthetic constructor <init>(Lckh;I)V
    .locals 0

    iput p2, p0, Liqh;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Liqh;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Liqj;I)V
    .locals 0

    iput p2, p0, Liqh;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Liqh;->a:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    iget v0, p0, Liqh;->b:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Liqh;->a:Ljava/lang/Object;

    check-cast v0, Lckh;

    invoke-virtual {v0}, Lckh;->e()V

    return-void

    :pswitch_0
    iget-object v0, p0, Liqh;->a:Ljava/lang/Object;

    check-cast v0, Liqj;

    invoke-virtual {v0}, Liqj;->p()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
