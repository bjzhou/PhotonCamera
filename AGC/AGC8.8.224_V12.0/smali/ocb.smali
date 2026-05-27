.class public final Locb;
.super Lnws;

# interfaces
.implements Lnxz;


# static fields
.field public static final b:Locb;

.field private static volatile c:Lnyf;


# instance fields
.field public a:Lnwz;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Locb;

    invoke-direct {v0}, Locb;-><init>()V

    sput-object v0, Locb;->b:Locb;

    const-class v1, Locb;

    invoke-static {v1, v0}, Lnws;->aa(Ljava/lang/Class;Lnws;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lnws;-><init>()V

    sget-object v0, Lnxp;->b:Lnxp;

    iput-object v0, p0, Locb;->a:Lnwz;

    return-void
.end method


# virtual methods
.method protected final a(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 2

    add-int/lit8 p1, p1, -0x1

    const/4 p2, 0x1

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    const/4 p1, 0x0

    return-object p1

    :pswitch_1
    sget-object p1, Locb;->c:Lnyf;

    if-nez p1, :cond_1

    const-class p2, Locb;

    monitor-enter p2

    :try_start_0
    sget-object p1, Locb;->c:Lnyf;

    if-nez p1, :cond_0

    new-instance p1, Lnwo;

    sget-object v0, Locb;->b:Locb;

    invoke-direct {p1, v0}, Lnwo;-><init>(Lnws;)V

    sput-object p1, Locb;->c:Lnyf;

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
    sget-object p1, Locb;->b:Locb;

    return-object p1

    :pswitch_3
    new-instance p1, Lnwn;

    sget-object p2, Locb;->b:Locb;

    invoke-direct {p1, p2}, Lnwn;-><init>(Lnws;)V

    return-object p1

    :pswitch_4
    new-instance p1, Locb;

    invoke-direct {p1}, Locb;-><init>()V

    return-object p1

    :pswitch_5
    const-string p1, "\u0001\u0001\u0000\u0000\u0001\u0001\u0001\u0000\u0001\u0000\u0001\u0015"

    new-array p2, p2, [Ljava/lang/Object;

    const/4 v0, 0x0

    const-string v1, "a"

    aput-object v1, p2, v0

    sget-object v0, Locb;->b:Locb;

    invoke-static {v0, p1, p2}, Locb;->X(Lnxy;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :pswitch_6
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

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
