.class public Ljbc;
.super Ljava/lang/Object;


# static fields
.field public static volatile a:I

.field public static final b:[Ljava/lang/String;

.field public static final i:Ligo;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final j:Ljfc;


# instance fields
.field public final c:Ljbi;

.field public final d:Landroid/content/Context;

.field protected final e:Ljbg;

.field protected final f:Ljava/lang/String;

.field public final g:Ljava/lang/String;

.field public final h:Ljava/util/EnumSet;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, -0x1

    sput v0, Ljbc;->a:I

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, Ljbc;->b:[Ljava/lang/String;

    new-instance v0, Ljbb;

    invoke-direct {v0}, Ljbb;-><init>()V

    sput-object v0, Ljbc;->j:Ljfc;

    new-instance v1, Ligo;

    const-string v2, "ClearcutLogger.API"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v0, v3, v3}, Ligo;-><init>(Ljava/lang/String;Ljfc;[B[B)V

    sput-object v1, Ljbc;->i:Ligo;

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/util/EnumSet;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Ljbk;->d:Ljbk;

    invoke-virtual {p3, v0}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    const-string v1, "Upload account name cannot be used with a deidentified or pseudonymous logger."

    invoke-static {v0, v1}, Ljhp;->T(ZLjava/lang/Object;)V

    :cond_0
    invoke-static {p3}, Ljbc;->b(Ljava/util/EnumSet;)V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Ljbc;->d:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljbc;->g:Ljava/lang/String;

    iput-object p2, p0, Ljbc;->f:Ljava/lang/String;

    iput-object p3, p0, Ljbc;->h:Ljava/util/EnumSet;

    new-instance p2, Ljbp;

    invoke-direct {p2, p1}, Ljbp;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Ljbc;->e:Ljbg;

    new-instance p2, Ljbu;

    invoke-direct {p2, p1}, Ljbu;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Ljbc;->c:Ljbi;

    return-void
.end method

.method static final a(Ljava/lang/Iterable;)Ljava/lang/String;
    .locals 1

    const-string v0, ", "

    invoke-static {v0}, Llhz;->j(Ljava/lang/String;)Llhz;

    move-result-object v0

    invoke-virtual {v0, p0}, Llhz;->f(Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final b(Ljava/util/EnumSet;)V
    .locals 1

    sget-object v0, Ljbk;->g:Ljava/util/EnumSet;

    invoke-virtual {p0, v0}, Ljava/util/EnumSet;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Ljbk;->e:Ljava/util/EnumSet;

    invoke-virtual {p0, v0}, Ljava/util/EnumSet;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Ljbk;->f:Ljava/util/EnumSet;

    invoke-virtual {p0, v0}, Ljava/util/EnumSet;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "piiLevelSet must be one of ZWIEBACK_ONLY, NO_RESTRICTIONS, or PIILevel.DEIDENTIFIED"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    return-void
.end method

.method public static final d(Ljava/util/ArrayList;)[I
    .locals 6

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [I

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    add-int/lit8 v5, v3, 0x1

    aput v4, v0, v3

    add-int/lit8 v2, v2, 0x1

    move v3, v5

    goto :goto_0

    :cond_1
    return-object v0
.end method


# virtual methods
.method public final c()Z
    .locals 2

    iget-object v0, p0, Ljbc;->h:Ljava/util/EnumSet;

    sget-object v1, Ljbk;->f:Ljava/util/EnumSet;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
