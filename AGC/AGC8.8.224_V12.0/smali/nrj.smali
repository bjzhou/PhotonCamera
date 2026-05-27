.class public final Lnrj;
.super Ljava/lang/Object;


# static fields
.field public static final a:Lnrj;

.field public static final b:Lnrj;

.field public static final c:Lnrj;

.field private static final e:[Lnrj;

.field private static f:I


# instance fields
.field public final d:I

.field private final g:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lnrj;

    invoke-direct {v0}, Lnrj;-><init>()V

    sput-object v0, Lnrj;->a:Lnrj;

    new-instance v1, Lnrj;

    const-string v2, "kNv12"

    invoke-direct {v1, v2}, Lnrj;-><init>(Ljava/lang/String;)V

    sput-object v1, Lnrj;->b:Lnrj;

    new-instance v2, Lnrj;

    const-string v3, "kNv21"

    invoke-direct {v2, v3}, Lnrj;-><init>(Ljava/lang/String;)V

    sput-object v2, Lnrj;->c:Lnrj;

    const/4 v3, 0x3

    new-array v3, v3, [Lnrj;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const/4 v0, 0x1

    aput-object v1, v3, v0

    const/4 v0, 0x2

    aput-object v2, v3, v0

    sput-object v3, Lnrj;->e:[Lnrj;

    sput v4, Lnrj;->f:I

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "kInvalid"

    iput-object v0, p0, Lnrj;->g:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lnrj;->d:I

    const/4 v0, 0x1

    sput v0, Lnrj;->f:I

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnrj;->g:Ljava/lang/String;

    sget p1, Lnrj;->f:I

    add-int/lit8 v0, p1, 0x1

    sput v0, Lnrj;->f:I

    iput p1, p0, Lnrj;->d:I

    return-void
.end method

.method public static a(I)Lnrj;
    .locals 4

    sget-object v0, Lnrj;->e:[Lnrj;

    const/4 v1, 0x0

    const/4 v2, 0x3

    if-ge p0, v2, :cond_2

    if-ltz p0, :cond_1

    aget-object v0, v0, p0

    iget v3, v0, Lnrj;->d:I

    if-eq v3, p0, :cond_0

    goto :goto_0

    :cond_0
    return-object v0

    :cond_1
    goto :goto_0

    :cond_2
    :goto_0
    sget-object v0, Lnrj;->e:[Lnrj;

    if-ge v1, v2, :cond_4

    aget-object v0, v0, v1

    iget v3, v0, Lnrj;->d:I

    if-ne v3, p0, :cond_3

    return-object v0

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-class v1, Lnrj;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No enum "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " with value "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    throw v0

    :goto_2
    goto :goto_1
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnrj;->g:Ljava/lang/String;

    return-object v0
.end method
