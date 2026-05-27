.class public Landroidx/core/content/UriMatcherCompat;
.super Ljava/lang/Object;
.source "UriMatcherCompat.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static asPredicate(Landroid/content/UriMatcher;)Landroidx/core/util/Predicate;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/UriMatcher;",
            ")",
            "Landroidx/core/util/Predicate<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation

    .line 40
    new-instance v0, Landroidx/core/content/UriMatcherCompat$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Landroidx/core/content/UriMatcherCompat$$ExternalSyntheticLambda0;-><init>(Landroid/content/UriMatcher;)V

    return-object v0
.end method

.method static synthetic lambda$asPredicate$0(Landroid/content/UriMatcher;Landroid/net/Uri;)Z
    .locals 0

    .line 40
    invoke-virtual {p0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result p0

    const/4 p1, -0x1

    if-eq p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
