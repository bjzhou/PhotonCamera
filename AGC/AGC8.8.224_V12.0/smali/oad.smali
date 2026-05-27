.class public final Load;
.super Lnws;

# interfaces
.implements Lnxz;


# static fields
.field public static final c:Load;

.field private static volatile d:Lnyf;


# instance fields
.field public a:Lnwy;

.field public b:Lnxa;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Load;

    invoke-direct {v0}, Load;-><init>()V

    sput-object v0, Load;->c:Load;

    const-class v1, Load;

    invoke-static {v1, v0}, Lnws;->aa(Ljava/lang/Class;Lnws;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lnws;-><init>()V

    sget-object v0, Lnwt;->b:Lnwt;

    iput-object v0, p0, Load;->a:Lnwy;

    sget-object v0, Lnyi;->b:Lnyi;

    iput-object v0, p0, Load;->b:Lnxa;

    return-void
.end method

.method public static c()Lnwn;
    .locals 1

    sget-object v0, Load;->c:Load;

    invoke-virtual {v0}, Lnws;->O()Lnwn;

    move-result-object v0

    return-object v0
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
    sget-object p1, Load;->d:Lnyf;

    if-nez p1, :cond_1

    const-class p2, Load;

    monitor-enter p2

    :try_start_0
    sget-object p1, Load;->d:Lnyf;

    if-nez p1, :cond_0

    new-instance p1, Lnwo;

    sget-object v0, Load;->c:Load;

    invoke-direct {p1, v0}, Lnwo;-><init>(Lnws;)V

    sput-object p1, Load;->d:Lnyf;

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
    sget-object p1, Load;->c:Load;

    return-object p1

    :pswitch_3
    new-instance p1, Lnwn;

    sget-object p2, Load;->c:Load;

    invoke-direct {p1, p2}, Lnwn;-><init>(Lnws;)V

    return-object p1

    :pswitch_4
    new-instance p1, Load;

    invoke-direct {p1}, Load;-><init>()V

    return-object p1

    :pswitch_5
    const-string p1, "a"

    const-string v0, "\u0001\u0002\u0000\u0000\u0001\u0002\u0002\u0000\u0002\u0000\u0001,\u0002\u001b"

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    sget-object p1, Lnzw;->d:Lnww;

    aput-object p1, v1, p2

    const/4 p1, 0x2

    const-string p2, "b"

    aput-object p2, v1, p1

    const/4 p1, 0x3

    const-class p2, Loae;

    aput-object p2, v1, p1

    sget-object p1, Load;->c:Load;

    invoke-static {p1, v0, v1}, Load;->X(Lnxy;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

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
