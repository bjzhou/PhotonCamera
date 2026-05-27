.class public final enum Lnlm;
.super Ljava/lang/Enum;

# interfaces
.implements Lnwv;


# static fields
.field public static final enum a:Lnlm;

.field public static final enum b:Lnlm;

.field public static final enum c:Lnlm;

.field public static final enum d:Lnlm;

.field public static final enum e:Lnlm;

.field public static final enum f:Lnlm;

.field private static final synthetic h:[Lnlm;


# instance fields
.field public final g:I


# direct methods
.method static constructor <clinit>()V
    .locals 13

    new-instance v0, Lnlm;

    const-string v1, "NO_STABILIZATION"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lnlm;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lnlm;->a:Lnlm;

    new-instance v1, Lnlm;

    const-string v3, "STEADY_FACE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lnlm;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lnlm;->b:Lnlm;

    new-instance v3, Lnlm;

    const-string v5, "STANDARD"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Lnlm;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lnlm;->c:Lnlm;

    new-instance v5, Lnlm;

    const-string v7, "CINEMATIC"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v8}, Lnlm;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lnlm;->d:Lnlm;

    new-instance v7, Lnlm;

    const-string v9, "LOCKED"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10, v10}, Lnlm;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lnlm;->e:Lnlm;

    new-instance v9, Lnlm;

    const-string v11, "ACTIVE"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12, v12}, Lnlm;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lnlm;->f:Lnlm;

    const/4 v11, 0x6

    new-array v11, v11, [Lnlm;

    aput-object v0, v11, v2

    aput-object v1, v11, v4

    aput-object v3, v11, v6

    aput-object v5, v11, v8

    aput-object v7, v11, v10

    aput-object v9, v11, v12

    sput-object v11, Lnlm;->h:[Lnlm;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lnlm;->g:I

    return-void
.end method

.method public static values()[Lnlm;
    .locals 1

    sget-object v0, Lnlm;->h:[Lnlm;

    invoke-virtual {v0}, [Lnlm;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnlm;

    return-object v0
.end method


# virtual methods
.method public final a()I
    .locals 1

    iget v0, p0, Lnlm;->g:I

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    iget v0, p0, Lnlm;->g:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
