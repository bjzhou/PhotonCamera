.class public final Lkkz;
.super Ljava/lang/Object;

# interfaces
.implements Lkpc;


# instance fields
.field public final a:Ljava/lang/Object;

.field private final synthetic b:I


# direct methods
.method public constructor <init>(Lgnf;I)V
    .locals 0

    iput p2, p0, Lkkz;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkkz;->a:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lkoe;I)V
    .locals 0

    iput p2, p0, Lkkz;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkkz;->a:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lkpc;I)V
    .locals 0

    iput p2, p0, Lkkz;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkkz;->a:Ljava/lang/Object;

    return-void
.end method

.method private static final c(Lkpe;)Lkpe;
    .locals 3

    new-instance v0, Lkme;

    new-instance v1, Lkmh;

    new-instance v2, Lklf;

    invoke-direct {v2, p0}, Lklf;-><init>(Lkpe;)V

    invoke-direct {v1, v2}, Lkmh;-><init>(Lkpe;)V

    invoke-direct {v0, v1}, Lkme;-><init>(Lkpe;)V

    return-object v0
.end method


# virtual methods
.method public final a(IIII)Lkpe;
    .locals 2

    iget v0, p0, Lkkz;->b:I

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lkkz;->a:Ljava/lang/Object;

    new-instance v1, Lkky;

    invoke-static {p1, p2, p3, p4}, Landroid/media/ImageReader;->newInstance(IIII)Landroid/media/ImageReader;

    move-result-object p1

    check-cast v0, Lkkz;

    iget-object p2, v0, Lkkz;->a:Ljava/lang/Object;

    check-cast p2, Lkoe;

    iget-boolean p2, p2, Lkoe;->b:Z

    invoke-direct {v1, p1}, Lkky;-><init>(Landroid/media/ImageReader;)V

    invoke-static {v1}, Lkkz;->c(Lkpe;)Lkpe;

    move-result-object p1

    return-object p1

    :pswitch_0
    throw v1

    :pswitch_1
    throw v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final b(IIIIJ)Lkpe;
    .locals 2

    iget v0, p0, Lkkz;->b:I

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x1

    const-string v1, "Usage flags are not available on Android P or lower."

    invoke-static {v0, v1}, Lmoz;->q(ZLjava/lang/Object;)V

    new-instance v0, Lkky;

    invoke-static/range {p1 .. p6}, Landroid/media/ImageReader;->newInstance(IIIIJ)Landroid/media/ImageReader;

    move-result-object p1

    invoke-direct {v0, p1}, Lkky;-><init>(Landroid/media/ImageReader;)V

    invoke-static {v0}, Lkkz;->c(Lkpe;)Lkpe;

    move-result-object p1

    return-object p1

    :pswitch_0
    throw v1

    :pswitch_1
    throw v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
