.class public final Loym;
.super Lnwq;

# interfaces
.implements Lnxz;


# static fields
.field public static final a:Loym;

.field private static volatile c:Lnyf;


# instance fields
.field private b:B


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Loym;

    invoke-direct {v0}, Loym;-><init>()V

    sput-object v0, Loym;->a:Loym;

    const-class v1, Loym;

    invoke-static {v1, v0}, Lnws;->aa(Ljava/lang/Class;Lnws;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lnwq;-><init>()V

    const/4 v0, 0x2

    iput-byte v0, p0, Loym;->b:B

    return-void
.end method


# virtual methods
.method protected final a(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 1

    add-int/lit8 p1, p1, -0x1

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    if-nez p2, :cond_2

    const/4 p1, 0x0

    goto :goto_1

    :pswitch_1
    sget-object p1, Loym;->c:Lnyf;

    if-nez p1, :cond_1

    const-class p2, Loym;

    monitor-enter p2

    :try_start_0
    sget-object p1, Loym;->c:Lnyf;

    if-nez p1, :cond_0

    new-instance p1, Lnwo;

    sget-object v0, Loym;->a:Loym;

    invoke-direct {p1, v0}, Lnwo;-><init>(Lnws;)V

    sput-object p1, Loym;->c:Lnyf;

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
    sget-object p1, Loym;->a:Loym;

    return-object p1

    :pswitch_3
    new-instance p1, Lnwp;

    sget-object p2, Loym;->a:Loym;

    invoke-direct {p1, p2}, Lnwp;-><init>(Lnwq;)V

    return-object p1

    :pswitch_4
    new-instance p1, Loym;

    invoke-direct {p1}, Loym;-><init>()V

    return-object p1

    :pswitch_5
    sget-object p1, Loym;->a:Loym;

    const-string p2, "\u0001\u0000"

    invoke-static {p1, p2, v0}, Loym;->X(Lnxy;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :pswitch_6
    iget-byte p1, p0, Loym;->b:B

    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    :cond_2
    const/4 p1, 0x1

    :goto_1
    iput-byte p1, p0, Loym;->b:B

    return-object v0

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
