.class public final Lnqy;
.super Ljava/lang/Object;


# static fields
.field public static final a:Lnqy;

.field public static final b:Lnqy;

.field public static final c:Lnqy;

.field public static final d:Lnqy;

.field public static final e:[Lnqy;

.field private static g:I


# instance fields
.field public final f:I

.field private final h:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Lnqy;

    invoke-direct {v0}, Lnqy;-><init>()V

    sput-object v0, Lnqy;->a:Lnqy;

    new-instance v1, Lnqy;

    const-string v2, "kSrgb"

    invoke-direct {v1, v2}, Lnqy;-><init>(Ljava/lang/String;)V

    sput-object v1, Lnqy;->b:Lnqy;

    new-instance v2, Lnqy;

    const-string v3, "kDisplayP3"

    invoke-direct {v2, v3}, Lnqy;-><init>(Ljava/lang/String;)V

    sput-object v2, Lnqy;->c:Lnqy;

    new-instance v3, Lnqy;

    const-string v4, "kInvalid"

    invoke-direct {v3, v4}, Lnqy;-><init>(Ljava/lang/String;)V

    sput-object v3, Lnqy;->d:Lnqy;

    const/4 v4, 0x4

    new-array v4, v4, [Lnqy;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    const/4 v0, 0x1

    aput-object v1, v4, v0

    const/4 v0, 0x2

    aput-object v2, v4, v0

    const/4 v0, 0x3

    aput-object v3, v4, v0

    sput-object v4, Lnqy;->e:[Lnqy;

    sput v5, Lnqy;->g:I

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "kNone"

    iput-object v0, p0, Lnqy;->h:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lnqy;->f:I

    const/4 v0, 0x1

    sput v0, Lnqy;->g:I

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnqy;->h:Ljava/lang/String;

    sget p1, Lnqy;->g:I

    add-int/lit8 v0, p1, 0x1

    sput v0, Lnqy;->g:I

    iput p1, p0, Lnqy;->f:I

    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnqy;->h:Ljava/lang/String;

    return-object v0
.end method
