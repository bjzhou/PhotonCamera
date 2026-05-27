.class public final Llsq;
.super Llsv;


# static fields
.field public static final a:Llsv;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Llsq;

    invoke-direct {v0}, Llsq;-><init>()V

    sput-object v0, Llsq;->a:Llsv;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Llsv;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Llsn;Ljava/lang/String;Ljava/util/concurrent/Executor;Lva;)Llsu;
    .locals 13

    move-object v0, p1

    iget-boolean v1, v0, Llsn;->e:Z

    if-eqz v1, :cond_0

    invoke-static {}, Lnwh;->a()Lnwh;

    move-result-object v1

    goto :goto_0

    :cond_0
    sget-object v1, Lnwh;->a:Lnwh;

    :goto_0
    iget-object v2, v0, Llsn;->b:Lnxy;

    new-instance v6, Llta;

    invoke-direct {v6, v2, v1}, Llta;-><init>(Lnxy;Lnwh;)V

    new-instance v1, Llsr;

    iget-object v2, v0, Llsn;->a:Landroid/net/Uri;

    invoke-static {v2}, Lnsy;->B(Ljava/lang/Object;)Lnou;

    move-result-object v5

    iget-object v9, v0, Llsn;->c:Llsh;

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v3, v1

    move-object v4, p2

    move-object/from16 v7, p3

    move-object/from16 v8, p4

    invoke-direct/range {v3 .. v12}, Llsr;-><init>(Ljava/lang/String;Lnou;Llta;Ljava/util/concurrent/Executor;Lva;Llsh;[B[B[B)V

    return-object v1
.end method
