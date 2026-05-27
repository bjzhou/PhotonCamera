.class public final Locv;
.super Lnws;

# interfaces
.implements Lnxz;


# static fields
.field public static final a:Locv;

.field private static volatile c:Lnyf;


# instance fields
.field private b:Lnxt;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Locv;

    invoke-direct {v0}, Locv;-><init>()V

    sput-object v0, Locv;->a:Locv;

    const-class v1, Locv;

    invoke-static {v1, v0}, Lnws;->aa(Ljava/lang/Class;Lnws;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lnws;-><init>()V

    sget-object v0, Lnxt;->a:Lnxt;

    iput-object v0, p0, Locv;->b:Lnxt;

    return-void
.end method


# virtual methods
.method protected final a(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 3

    add-int/lit8 p1, p1, -0x1

    const/4 p2, 0x1

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    const/4 p1, 0x0

    return-object p1

    :pswitch_1
    sget-object p1, Locv;->c:Lnyf;

    if-nez p1, :cond_1

    const-class p2, Locv;

    monitor-enter p2

    :try_start_0
    sget-object p1, Locv;->c:Lnyf;

    if-nez p1, :cond_0

    new-instance p1, Lnwo;

    sget-object v0, Locv;->a:Locv;

    invoke-direct {p1, v0}, Lnwo;-><init>(Lnws;)V

    sput-object p1, Locv;->c:Lnyf;

    :cond_0
    monitor-exit p2

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_1
    :goto_0
    return-object p1

    :pswitch_2
    sget-object p1, Locv;->a:Locv;

    return-object p1

    :pswitch_3
    new-instance p1, Lnwn;

    sget-object p2, Locv;->a:Locv;

    invoke-direct {p1, p2}, Lnwn;-><init>(Lnws;)V

    return-object p1

    :pswitch_4
    new-instance p1, Locv;

    invoke-direct {p1}, Locv;-><init>()V

    return-object p1

    :pswitch_5
    const-string p1, "b"

    const-string v0, "\u0001\u0001\u0000\u0000\u0001\u0001\u0001\u0001\u0000\u0000\u00012"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    sget-object p1, Locu;->a:Llzz;

    aput-object p1, v1, p2

    sget-object p1, Locv;->a:Locv;

    invoke-static {p1, v0, v1}, Locv;->X(Lnxy;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :pswitch_6
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
