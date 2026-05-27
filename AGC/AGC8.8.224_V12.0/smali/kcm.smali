.class final Lkcm;
.super Ljava/lang/Object;

# interfaces
.implements Lkcn;


# instance fields
.field private final synthetic a:I

.field private final b:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lkbo;I)V
    .locals 0

    iput p2, p0, Lkcm;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkcm;->b:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lkoo;I)V
    .locals 0

    iput p2, p0, Lkcm;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkcm;->b:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final a(Lkbw;)V
    .locals 1

    iget v0, p0, Lkcm;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lkcm;->b:Ljava/lang/Object;

    check-cast v0, Lkbo;

    invoke-interface {p1, v0}, Lkbw;->c(Lkbo;)V

    return-void

    :pswitch_0
    iget-object v0, p0, Lkcm;->b:Ljava/lang/Object;

    invoke-interface {p1, v0}, Lkbw;->d(Lkoo;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
