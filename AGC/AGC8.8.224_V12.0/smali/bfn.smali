.class public final Lbfn;
.super Ljava/lang/Object;


# instance fields
.field public a:Ljava/lang/String;

.field public b:I

.field public c:Z

.field public d:I


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbfn;->a:Ljava/lang/String;

    iput p2, p0, Lbfn;->b:I

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lbfn;->c:Z

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    iget v0, p0, Lbfn;->b:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lbfn;->a:Ljava/lang/String;

    return-object v0

    :pswitch_0
    iget-object v0, p0, Lbfn;->a:Ljava/lang/String;

    return-object v0

    :pswitch_1
    iget-object v0, p0, Lbfn;->a:Ljava/lang/String;

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
