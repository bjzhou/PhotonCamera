.class public final enum Ljxb;
.super Ljava/lang/Enum;

# interfaces
.implements Ljxd;


# static fields
.field public static final enum a:Ljxb;

.field public static final enum b:Ljxb;

.field public static final enum c:Ljxb;

.field public static final enum d:Ljxb;

.field public static final enum e:Ljxb;

.field private static final synthetic g:[Ljxb;


# instance fields
.field public final f:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 12

    new-instance v0, Ljxb;

    const-string v1, "AMR_NB"

    const/4 v2, 0x0

    const-string v3, "audio/3gpp"

    invoke-direct {v0, v1, v2, v3}, Ljxb;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Ljxb;->a:Ljxb;

    new-instance v1, Ljxb;

    const-string v3, "AMR_WB"

    const/4 v4, 0x1

    const-string v5, "audio/amr-wb"

    invoke-direct {v1, v3, v4, v5}, Ljxb;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Ljxb;->b:Ljxb;

    new-instance v3, Ljxb;

    const-string v5, "AAC"

    const/4 v6, 0x2

    const-string v7, "audio/mp4a-latm"

    invoke-direct {v3, v5, v6, v7}, Ljxb;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Ljxb;->c:Ljxb;

    new-instance v5, Ljxb;

    const-string v8, "HE_AAC"

    const/4 v9, 0x3

    invoke-direct {v5, v8, v9, v7}, Ljxb;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v5, Ljxb;->d:Ljxb;

    new-instance v8, Ljxb;

    const-string v10, "AAC_ELD"

    const/4 v11, 0x4

    invoke-direct {v8, v10, v11, v7}, Ljxb;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v8, Ljxb;->e:Ljxb;

    const/4 v7, 0x5

    new-array v7, v7, [Ljxb;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v9

    aput-object v8, v7, v11

    sput-object v7, Ljxb;->g:[Ljxb;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Ljxb;->f:Ljava/lang/String;

    return-void
.end method

.method public static values()[Ljxb;
    .locals 1

    sget-object v0, Ljxb;->g:[Ljxb;

    invoke-virtual {v0}, [Ljxb;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljxb;

    return-object v0
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ljxb;->f:Ljava/lang/String;

    return-object v0
.end method
