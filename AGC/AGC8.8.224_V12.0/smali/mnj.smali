.class final Lmnj;
.super Lmnc;

# interfaces
.implements Lmnf;


# static fields
.field static final a:Lmnd;


# instance fields
.field public final b:Lmnd;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lmne;

    invoke-direct {v0}, Lmne;-><init>()V

    sput-object v0, Lmnj;->a:Lmnd;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    sget-object v0, Lmni;->a:Lmni;

    invoke-virtual {v0}, Lmni;->b()Ljava/util/UUID;

    move-result-object v0

    const-string v1, ""

    invoke-direct {p0, v1, v0}, Lmnc;-><init>(Ljava/lang/String;Ljava/util/UUID;)V

    sget-object v0, Lmnj;->a:Lmnd;

    iput-object v0, p0, Lmnj;->b:Lmnd;

    return-void
.end method


# virtual methods
.method public final d(Ljava/lang/String;Lmno;Z)Lmnt;
    .locals 1

    if-eqz p3, :cond_0

    sget-object v0, Lmoc;->a:Ljava/util/WeakHashMap;

    :cond_0
    new-instance v0, Lmnk;

    invoke-direct {v0, p1, p0, p2, p3}, Lmnk;-><init>(Ljava/lang/String;Lmnf;Lmno;Z)V

    return-object v0
.end method

.method public final synthetic e()Ljava/lang/Exception;
    .locals 1

    iget-object v0, p0, Lmnj;->b:Lmnd;

    return-object v0
.end method

.method public final f()Lmno;
    .locals 1

    sget-object v0, Lmnn;->a:Lmno;

    return-object v0
.end method

.method public final g(Ljava/lang/String;Lmno;)Lmnt;
    .locals 1

    sget-object v0, Lmoc;->a:Ljava/util/WeakHashMap;

    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lmnj;->d(Ljava/lang/String;Lmno;Z)Lmnt;

    move-result-object p1

    return-object p1
.end method
