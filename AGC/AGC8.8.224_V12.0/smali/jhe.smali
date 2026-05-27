.class public final Ljhe;
.super Ljava/lang/Object;

# interfaces
.implements Ljhf;


# instance fields
.field private final synthetic a:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    iput p1, p0, Ljhe;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljdq;)Ljava/lang/Object;
    .locals 1

    iget v0, p0, Ljhe;->a:I

    packed-switch v0, :pswitch_data_0

    check-cast p1, Ljqu;

    iget-object p1, p1, Ljqu;->b:Ljhn;

    return-object p1

    :pswitch_0
    const/4 p1, 0x0

    return-object p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
