.class public final enum Ljwt;
.super Ljava/lang/Enum;


# static fields
.field public static final enum a:Ljwt;

.field public static final enum b:Ljwt;

.field public static final enum c:Ljwt;

.field private static final synthetic g:[Ljwt;


# instance fields
.field public final d:I

.field public final e:I

.field public final f:Lkqi;


# direct methods
.method static constructor <clinit>()V
    .locals 19

    new-instance v6, Ljwt;

    const-string v1, "MPEG_4"

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x0

    sget-object v5, Lkqi;->e:Lkqi;

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Ljwt;-><init>(Ljava/lang/String;IIILkqi;)V

    sput-object v6, Ljwt;->a:Ljwt;

    new-instance v0, Ljwt;

    const-string v8, "WEBM"

    const/4 v9, 0x1

    const/16 v10, 0x9

    const/4 v11, 0x1

    sget-object v12, Lkqi;->g:Lkqi;

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Ljwt;-><init>(Ljava/lang/String;IIILkqi;)V

    sput-object v0, Ljwt;->b:Ljwt;

    new-instance v1, Ljwt;

    sget-object v18, Lkqi;->f:Lkqi;

    const-string v14, "THREE_GPP"

    const/4 v15, 0x2

    const/16 v16, 0x1

    const/16 v17, 0x2

    move-object v13, v1

    invoke-direct/range {v13 .. v18}, Ljwt;-><init>(Ljava/lang/String;IIILkqi;)V

    sput-object v1, Ljwt;->c:Ljwt;

    const/4 v2, 0x3

    new-array v2, v2, [Ljwt;

    const/4 v3, 0x0

    aput-object v6, v2, v3

    const/4 v3, 0x1

    aput-object v0, v2, v3

    const/4 v0, 0x2

    aput-object v1, v2, v0

    sput-object v2, Ljwt;->g:[Ljwt;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IIILkqi;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Ljwt;->d:I

    iput p4, p0, Ljwt;->e:I

    iput-object p5, p0, Ljwt;->f:Lkqi;

    return-void
.end method

.method public static a(Ljxl;)Z
    .locals 2

    iget p0, p0, Ljxl;->e:I

    const/4 v0, 0x2

    const/4 v1, 0x1

    if-eq p0, v0, :cond_1

    if-ne p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    return v1
.end method

.method public static values()[Ljwt;
    .locals 1

    sget-object v0, Ljwt;->g:[Ljwt;

    invoke-virtual {v0}, [Ljwt;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljwt;

    return-object v0
.end method
