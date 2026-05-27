.class public final Lbvm;
.super Ljava/lang/Object;

# interfaces
.implements Lbuz;


# static fields
.field private static final a:Ljava/util/Set;


# instance fields
.field private final b:Lbuz;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Ljava/util/HashSet;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "http"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "https"

    aput-object v3, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lbvm;->a:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>(Lbuz;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbvm;->b:Lbuz;

    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Ljava/lang/Object;)Z
    .locals 1

    check-cast p1, Landroid/net/Uri;

    sget-object v0, Lbvm;->a:Ljava/util/Set;

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final bridge synthetic b(Ljava/lang/Object;IILbqf;)Lva;
    .locals 1

    check-cast p1, Landroid/net/Uri;

    new-instance v0, Lbuq;

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lbuq;-><init>(Ljava/lang/String;)V

    iget-object p1, p0, Lbvm;->b:Lbuz;

    invoke-interface {p1, v0, p2, p3, p4}, Lbuz;->b(Ljava/lang/Object;IILbqf;)Lva;

    move-result-object p1

    return-object p1
.end method
