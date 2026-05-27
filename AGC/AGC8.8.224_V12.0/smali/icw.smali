.class public final enum Licw;
.super Ljava/lang/Enum;


# static fields
.field public static final enum a:Licw;

.field public static final enum b:Licw;

.field public static final enum c:Licw;

.field public static final enum d:Licw;

.field private static final synthetic h:[Licw;


# instance fields
.field public final e:I

.field public final f:Z

.field public final g:I


# direct methods
.method static constructor <clinit>()V
    .locals 19

    new-instance v6, Licw;

    const-string v1, "TOP"

    const/4 v2, 0x0

    const v3, 0x7f0b0298

    const/4 v4, 0x1

    const/4 v5, -0x1

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Licw;-><init>(Ljava/lang/String;IIZI)V

    sput-object v6, Licw;->a:Licw;

    new-instance v0, Licw;

    const-string v8, "LEFT"

    const/4 v9, 0x1

    const v10, 0x7f0b0296

    const/4 v11, 0x0

    const/4 v12, -0x1

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Licw;-><init>(Ljava/lang/String;IIZI)V

    sput-object v0, Licw;->b:Licw;

    new-instance v1, Licw;

    const-string v14, "RIGHT"

    const/4 v15, 0x2

    const v16, 0x7f0b0297

    const/16 v17, 0x0

    const/16 v18, 0x1

    move-object v13, v1

    invoke-direct/range {v13 .. v18}, Licw;-><init>(Ljava/lang/String;IIZI)V

    sput-object v1, Licw;->c:Licw;

    new-instance v2, Licw;

    const-string v8, "BOTTOM"

    const/4 v9, 0x3

    const v10, 0x7f0b0295

    const/4 v11, 0x1

    const/4 v12, 0x1

    move-object v7, v2

    invoke-direct/range {v7 .. v12}, Licw;-><init>(Ljava/lang/String;IIZI)V

    sput-object v2, Licw;->d:Licw;

    const/4 v3, 0x4

    new-array v3, v3, [Licw;

    const/4 v4, 0x0

    aput-object v6, v3, v4

    const/4 v4, 0x1

    aput-object v0, v3, v4

    const/4 v0, 0x2

    aput-object v1, v3, v0

    const/4 v0, 0x3

    aput-object v2, v3, v0

    sput-object v3, Licw;->h:[Licw;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IIZI)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Licw;->e:I

    iput-boolean p4, p0, Licw;->f:Z

    iput p5, p0, Licw;->g:I

    return-void
.end method

.method public static values()[Licw;
    .locals 1

    sget-object v0, Licw;->h:[Licw;

    invoke-virtual {v0}, [Licw;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Licw;

    return-object v0
.end method
