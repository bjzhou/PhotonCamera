.class public final Lnqr;
.super Ljava/lang/Object;


# static fields
.field public static final a:Lnqr;

.field public static final b:Lnqr;

.field public static final c:Lnqr;

.field public static final d:Lnqr;

.field public static final e:[Lnqr;


# instance fields
.field public final f:I

.field private final g:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    new-instance v0, Lnqr;

    const-string v1, "kUnknown"

    const/4 v2, -0x1

    invoke-direct {v0, v1, v2}, Lnqr;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnqr;->a:Lnqr;

    new-instance v1, Lnqr;

    const-string v2, "kFront"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lnqr;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lnqr;->b:Lnqr;

    new-instance v2, Lnqr;

    const-string v4, "kBack"

    const/4 v5, 0x1

    invoke-direct {v2, v4, v5}, Lnqr;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lnqr;->c:Lnqr;

    new-instance v4, Lnqr;

    const-string v6, "kExternal"

    const/4 v7, 0x2

    invoke-direct {v4, v6, v7}, Lnqr;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lnqr;->d:Lnqr;

    const/4 v6, 0x4

    new-array v6, v6, [Lnqr;

    aput-object v0, v6, v3

    aput-object v1, v6, v5

    aput-object v2, v6, v7

    const/4 v0, 0x3

    aput-object v4, v6, v0

    sput-object v6, Lnqr;->e:[Lnqr;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnqr;->g:Ljava/lang/String;

    iput p2, p0, Lnqr;->f:I

    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnqr;->g:Ljava/lang/String;

    return-object v0
.end method
