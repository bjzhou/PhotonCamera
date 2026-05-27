.class public final Liur;
.super Lnwq;

# interfaces
.implements Lnxz;


# static fields
.field public static final b:Liur;

.field private static volatile e:Lnyf;


# instance fields
.field public a:I

.field private c:I

.field private d:B


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Liur;

    invoke-direct {v0}, Liur;-><init>()V

    sput-object v0, Liur;->b:Liur;

    const-class v1, Liur;

    invoke-static {v1, v0}, Lnws;->aa(Ljava/lang/Class;Lnws;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lnwq;-><init>()V

    const/4 v0, 0x2

    iput-byte v0, p0, Liur;->d:B

    const/4 v0, 0x1

    iput v0, p0, Liur;->a:I

    return-void
.end method


# virtual methods
.method protected final a(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 3

    add-int/lit8 p1, p1, -0x1

    const/4 v0, 0x1

    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    if-nez p2, :cond_2

    const/4 v0, 0x0

    goto :goto_1

    :pswitch_1
    sget-object p1, Liur;->e:Lnyf;

    if-nez p1, :cond_1

    const-class p2, Liur;

    monitor-enter p2

    :try_start_0
    sget-object p1, Liur;->e:Lnyf;

    if-nez p1, :cond_0

    new-instance p1, Lnwo;

    sget-object v0, Liur;->b:Liur;

    invoke-direct {p1, v0}, Lnwo;-><init>(Lnws;)V

    sput-object p1, Liur;->e:Lnyf;

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
    sget-object p1, Liur;->b:Liur;

    return-object p1

    :pswitch_3
    new-instance p1, Lnwp;

    sget-object p2, Liur;->b:Liur;

    invoke-direct {p1, p2}, Lnwp;-><init>(Lnwq;)V

    return-object p1

    :pswitch_4
    new-instance p1, Liur;

    invoke-direct {p1}, Liur;-><init>()V

    return-object p1

    :pswitch_5
    const-string p1, "c"

    const-string p2, "\u0001\u0001\u0000\u0001\u0001\u0001\u0001\u0000\u0000\u0000\u0001\u100c\u0000"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v1

    const-string p1, "a"

    aput-object p1, v2, v0

    const/4 p1, 0x2

    sget-object v0, Lkuf;->b:Lnww;

    aput-object v0, v2, p1

    sget-object p1, Liur;->b:Liur;

    invoke-static {p1, p2, v2}, Liur;->X(Lnxy;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :pswitch_6
    iget-byte p1, p0, Liur;->d:B

    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    :cond_2
    :goto_1
    iput-byte v0, p0, Liur;->d:B

    const/4 p1, 0x0

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
