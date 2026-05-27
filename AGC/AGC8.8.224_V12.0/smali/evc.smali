.class public final Levc;
.super Ljava/lang/Object;

# interfaces
.implements Logk;


# instance fields
.field private final a:Loiw;

.field private final synthetic b:I


# direct methods
.method public constructor <init>(Loiw;I)V
    .locals 0

    iput p2, p0, Levc;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Levc;->a:Loiw;

    return-void
.end method


# virtual methods
.method public final a()Lfmd;
    .locals 3

    iget v0, p0, Levc;->b:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Levc;->a:Loiw;

    check-cast v0, Lfly;

    invoke-virtual {v0}, Lfly;->a()Lihg;

    move-result-object v0

    sget-object v1, Lgya;->q:Lgya;

    const-string v2, "MotionBlurCaptureSess"

    invoke-virtual {v0, v2, v1}, Lihg;->a(Ljava/lang/String;Lgya;)Lflx;

    move-result-object v0

    return-object v0

    :pswitch_0
    iget-object v0, p0, Levc;->a:Loiw;

    check-cast v0, Lfly;

    invoke-virtual {v0}, Lfly;->a()Lihg;

    move-result-object v0

    sget-object v1, Lgya;->k:Lgya;

    const-string v2, "PortraitCaptureSess"

    invoke-virtual {v0, v2, v1}, Lihg;->a(Ljava/lang/String;Lgya;)Lflx;

    move-result-object v0

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final synthetic get()Ljava/lang/Object;
    .locals 1

    iget v0, p0, Levc;->b:I

    packed-switch v0, :pswitch_data_0

    invoke-virtual {p0}, Levc;->a()Lfmd;

    move-result-object v0

    return-object v0

    :pswitch_0
    invoke-virtual {p0}, Levc;->a()Lfmd;

    move-result-object v0

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
