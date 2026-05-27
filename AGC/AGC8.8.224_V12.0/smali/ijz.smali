.class public final Lijz;
.super Ljava/lang/Object;

# interfaces
.implements Logk;


# instance fields
.field private final synthetic a:I

.field private final b:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lfvx;I)V
    .locals 0

    iput p2, p0, Lijz;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lijz;->b:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Loiw;I)V
    .locals 0

    iput p2, p0, Lijz;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lijz;->b:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final a()Lika;
    .locals 1

    iget v0, p0, Lijz;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lijz;->b:Ljava/lang/Object;

    check-cast v0, Lfvx;

    iget-object v0, v0, Lfvx;->f:Ljava/lang/Object;

    check-cast v0, Lika;

    return-object v0

    :pswitch_0
    iget-object v0, p0, Lijz;->b:Ljava/lang/Object;

    check-cast v0, Lels;

    invoke-virtual {v0}, Lels;->a()Landroid/content/Intent;

    move-result-object v0

    invoke-static {v0}, Lcdg;->d(Landroid/content/Intent;)Lika;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final synthetic get()Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lijz;->a:I

    packed-switch v0, :pswitch_data_0

    invoke-virtual {p0}, Lijz;->a()Lika;

    move-result-object v0

    return-object v0

    :pswitch_0
    invoke-virtual {p0}, Lijz;->a()Lika;

    move-result-object v0

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
