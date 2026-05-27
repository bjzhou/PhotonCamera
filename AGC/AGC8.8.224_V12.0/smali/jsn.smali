.class public final synthetic Ljsn;
.super Ljava/lang/Object;

# interfaces
.implements Ljhf;


# static fields
.field public static final synthetic a:Ljsn;

.field public static final synthetic b:Ljsn;

.field public static final synthetic c:Ljsn;


# instance fields
.field private final synthetic d:I


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 2

    new-instance v0, Ljsn;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljsn;-><init>(I)V

    sput-object v0, Ljsn;->c:Ljsn;

    new-instance v0, Ljsn;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljsn;-><init>(I)V

    sput-object v0, Ljsn;->b:Ljsn;

    new-instance v0, Ljsn;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljsn;-><init>(I)V

    sput-object v0, Ljsn;->a:Ljsn;

    return-void
.end method

.method private synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Ljsn;->d:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljdq;)Ljava/lang/Object;
    .locals 1

    iget v0, p0, Ljsn;->d:I

    packed-switch v0, :pswitch_data_0

    check-cast p1, Ljqu;

    iget-object p1, p1, Ljqu;->a:Ljava/lang/Object;

    return-object p1

    :pswitch_0
    check-cast p1, Ljqu;

    iget-object p1, p1, Ljqu;->a:Ljava/lang/Object;

    return-object p1

    :pswitch_1
    check-cast p1, Ljsm;

    iget p1, p1, Ljsm;->a:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
