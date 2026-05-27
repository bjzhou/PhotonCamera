.class public final Lksu;
.super Ljava/lang/Object;


# static fields
.field public static a:Z

.field public static final b:Ljava/lang/Object;

.field private static final c:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "COLLECTION_BASIS_VERIFIER"

    aput-object v2, v0, v1

    sput-object v0, Lksu;->c:[Ljava/lang/String;

    sput-boolean v1, Lksu;->a:Z

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lksu;->b:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lkrw;Lnaa;)V
    .locals 6

    iget-object v0, p0, Lkrw;->a:Landroid/content/Context;

    invoke-static {v0}, Ljnp;->a(Landroid/content/Context;)Ljns;

    move-result-object v0

    iget-object v1, p0, Lkrw;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lkrw;->a:Landroid/content/Context;

    invoke-virtual {p1, v2}, Lnaa;->f(Landroid/content/Context;)I

    move-result p1

    sget-object v2, Lksu;->c:[Ljava/lang/String;

    invoke-static {}, Ljfm;->a()Ljfl;

    move-result-object v3

    new-instance v4, Ljnq;

    const-string v5, "com.google.android.libraries.consentverifier#"

    invoke-virtual {v5, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v4, v1, p1, v2}, Ljnq;-><init>(Ljava/lang/String;I[Ljava/lang/String;)V

    iput-object v4, v3, Ljfl;->a:Ljfh;

    invoke-virtual {v3}, Ljfl;->a()Ljfm;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljde;->e(Ljfm;)Ljot;

    move-result-object p1

    invoke-static {p0}, Lktf;->c(Lkrw;)Ljava/util/concurrent/Executor;

    move-result-object p0

    :try_start_0
    new-instance v2, Lkst;

    invoke-direct {v2, v0, v1, p0}, Lkst;-><init>(Ljns;Ljava/lang/String;Ljava/util/concurrent/Executor;)V

    invoke-virtual {p1, p0, v2}, Ljot;->k(Ljava/util/concurrent/Executor;Ljop;)V

    new-instance v0, Lilp;

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lilp;-><init>(Ljava/lang/String;I)V

    invoke-virtual {p1, p0, v0}, Ljot;->j(Ljava/util/concurrent/Executor;Ljoo;)V
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    const/4 p1, 0x2

    new-array p1, p1, [Ljava/lang/Object;

    const/4 v0, 0x0

    aput-object v1, p1, v0

    const/4 v0, 0x1

    aput-object p0, p1, v0

    const-string p0, "Execution failure when updating phenotypeflags for %s. %s"

    invoke-static {p0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "CBVerifier"

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
