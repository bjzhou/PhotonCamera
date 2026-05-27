.class public final Lbvk;
.super Ljava/lang/Object;

# interfaces
.implements Lbuz;


# static fields
.field private static final a:Ljava/util/Set;

.field private static final b:Ljava/util/Set;


# instance fields
.field private final c:Lbvj;

.field private final d:Lbkc;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Ljava/util/HashSet;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "file"

    aput-object v3, v1, v2

    const-string v4, "android.resource"

    const/4 v5, 0x1

    aput-object v4, v1, v5

    const/4 v4, 0x2

    const-string v6, "content"

    aput-object v6, v1, v4

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lbvk;->a:Ljava/util/Set;

    new-instance v0, Ljava/util/HashSet;

    new-array v1, v4, [Ljava/lang/String;

    aput-object v3, v1, v2

    aput-object v6, v1, v5

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lbvk;->b:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>(Lbvj;Lbkc;[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbvk;->c:Lbvj;

    iput-object p2, p0, Lbvk;->d:Lbkc;

    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Ljava/lang/Object;)Z
    .locals 2

    check-cast p1, Landroid/net/Uri;

    iget-object v0, p0, Lbvk;->d:Lbkc;

    if-eqz v0, :cond_0

    const-class v1, Lbop;

    invoke-virtual {v0, v1}, Lbkc;->a(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lbvk;->b:Ljava/util/Set;

    goto :goto_0

    :cond_0
    sget-object v0, Lbvk;->a:Ljava/util/Set;

    :goto_0
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final bridge synthetic b(Ljava/lang/Object;IILbqf;)Lva;
    .locals 0

    check-cast p1, Landroid/net/Uri;

    new-instance p2, Lva;

    new-instance p3, Lcah;

    invoke-direct {p3, p1}, Lcah;-><init>(Ljava/lang/Object;)V

    iget-object p4, p0, Lbvk;->c:Lbvj;

    invoke-interface {p4, p1}, Lbvj;->a(Landroid/net/Uri;)Lbqo;

    move-result-object p1

    invoke-direct {p2, p3, p1}, Lva;-><init>(Lbqb;Lbqo;)V

    return-object p2
.end method
