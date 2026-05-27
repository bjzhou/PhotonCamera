.class final Lfps;
.super Ljava/lang/Object;

# interfaces
.implements Lfpq;


# instance fields
.field final synthetic a:Lfpq;

.field private final synthetic b:I


# direct methods
.method public constructor <init>(Lfpq;I)V
    .locals 0

    iput p2, p0, Lfps;->b:I

    iput-object p1, p0, Lfps;->a:Lfpq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lkpb;Lbkb;)Lfpp;
    .locals 0

    const/4 p1, 0x0

    throw p1
.end method

.method public final close()V
    .locals 1

    iget v0, p0, Lfps;->b:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lfps;->a:Lfpq;

    invoke-interface {v0}, Lfpq;->close()V

    return-void

    :pswitch_0
    iget-object v0, p0, Lfps;->a:Lfpq;

    invoke-interface {v0}, Lfpq;->close()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
