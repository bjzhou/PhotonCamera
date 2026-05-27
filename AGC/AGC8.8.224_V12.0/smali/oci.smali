.class public final Loci;
.super Lnws;

# interfaces
.implements Lnxz;


# static fields
.field public static final i:Loci;

.field private static volatile k:Lnyf;


# instance fields
.field public a:I

.field public b:F

.field public c:Lnxt;

.field public d:Locc;

.field public e:F

.field public f:F

.field public g:F

.field public h:F

.field private j:Lnxt;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Loci;

    invoke-direct {v0}, Loci;-><init>()V

    sput-object v0, Loci;->i:Loci;

    const-class v1, Loci;

    invoke-static {v1, v0}, Lnws;->aa(Ljava/lang/Class;Lnws;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lnws;-><init>()V

    sget-object v0, Lnxt;->a:Lnxt;

    iput-object v0, p0, Loci;->c:Lnxt;

    sget-object v0, Lnxt;->a:Lnxt;

    iput-object v0, p0, Loci;->j:Lnxt;

    sget-object v0, Lnyi;->b:Lnyi;

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
    sget-object p1, Loci;->k:Lnyf;

    if-nez p1, :cond_1

    const-class p2, Loci;

    monitor-enter p2

    :try_start_0
    sget-object p1, Loci;->k:Lnyf;

    if-nez p1, :cond_0

    new-instance p1, Lnwo;

    sget-object v0, Loci;->i:Loci;

    invoke-direct {p1, v0}, Lnwo;-><init>(Lnws;)V

    sput-object p1, Loci;->k:Lnyf;

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
    sget-object p1, Loci;->i:Loci;

    return-object p1

    :pswitch_3
    new-instance p1, Lnwn;

    sget-object p2, Loci;->i:Loci;

    invoke-direct {p1, p2}, Lnwn;-><init>(Lnws;)V

    return-object p1

    :pswitch_4
    new-instance p1, Loci;

    invoke-direct {p1}, Loci;-><init>()V

    return-object p1

    :pswitch_5
    const-string p1, "a"

    const-string v0, "\u0001\u0008\u0000\u0001\u0002\u000f\u0008\u0002\u0000\u0000\u0002\u1001\u0002\u00082\t\u1009\u0007\n2\u000c\u1001\u0008\r\u1001\t\u000e\u1001\n\u000f\u1001\u000b"

    const/16 v1, 0xb

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string p1, "b"

    aput-object p1, v1, p2

    const/4 p1, 0x2

    const-string p2, "c"

    aput-object p2, v1, p1

    sget-object p1, Loce;->a:Llzz;

    const/4 p2, 0x3

    aput-object p1, v1, p2

    const/4 p1, 0x4

    const-string p2, "d"

    aput-object p2, v1, p1

    const/4 p1, 0x5

    const-string p2, "j"

    aput-object p2, v1, p1

    const/4 p1, 0x6

    sget-object p2, Locg;->a:Llzz;

    aput-object p2, v1, p1

    const/4 p1, 0x7

    const-string p2, "e"

    aput-object p2, v1, p1

    const/16 p1, 0x8

    const-string p2, "f"

    aput-object p2, v1, p1

    const/16 p1, 0x9

    const-string p2, "g"

    aput-object p2, v1, p1

    const/16 p1, 0xa

    const-string p2, "h"

    aput-object p2, v1, p1

    sget-object p1, Loci;->i:Loci;

    invoke-static {p1, v0, v1}, Loci;->X(Lnxy;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

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

.method public final c(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Loci;->c:Lnxt;

    invoke-virtual {v0, p1}, Lnxt;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method
