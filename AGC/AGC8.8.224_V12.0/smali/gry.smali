.class public final enum Lgry;
.super Ljava/lang/Enum;


# static fields
.field public static final enum a:Lgry;

.field public static final enum b:Lgry;

.field public static final enum c:Lgry;

.field public static final enum d:Lgry;

.field public static final enum e:Lgry;

.field public static final enum f:Lgry;

.field public static final enum g:Lgry;

.field private static final i:Ljava/util/Map;

.field private static final synthetic j:[Lgry;


# instance fields
.field public final h:I


# direct methods
.method static constructor <clinit>()V
    .locals 15

    new-instance v0, Lgry;

    const-string v1, "INACTIVE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lgry;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lgry;->a:Lgry;

    new-instance v1, Lgry;

    const-string v3, "PASSIVE_SCAN"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lgry;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lgry;->b:Lgry;

    new-instance v3, Lgry;

    const-string v5, "PASSIVE_FOCUSED"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Lgry;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lgry;->c:Lgry;

    new-instance v5, Lgry;

    const-string v7, "ACTIVE_SCAN"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v8}, Lgry;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lgry;->d:Lgry;

    new-instance v7, Lgry;

    const-string v9, "FOCUSED_LOCKED"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10, v10}, Lgry;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lgry;->e:Lgry;

    new-instance v9, Lgry;

    const-string v11, "NOT_FOCUSED_LOCKED"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12, v12}, Lgry;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lgry;->f:Lgry;

    new-instance v11, Lgry;

    const-string v13, "PASSIVE_UNFOCUSED"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14, v14}, Lgry;-><init>(Ljava/lang/String;II)V

    sput-object v11, Lgry;->g:Lgry;

    const/4 v13, 0x7

    new-array v13, v13, [Lgry;

    aput-object v0, v13, v2

    aput-object v1, v13, v4

    aput-object v3, v13, v6

    aput-object v5, v13, v8

    aput-object v7, v13, v10

    aput-object v9, v13, v12

    aput-object v11, v13, v14

    sput-object v13, Lgry;->j:[Lgry;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lgry;->i:Ljava/util/Map;

    invoke-static {}, Lgry;->values()[Lgry;

    move-result-object v0

    array-length v1, v0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    sget-object v4, Lgry;->i:Ljava/util/Map;

    iget v5, v3, Lgry;->h:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lgry;->h:I

    return-void
.end method

.method public static a(I)Lgry;
    .locals 3

    sget-object v0, Lgry;->i:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgry;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unknown metadata value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static values()[Lgry;
    .locals 1

    sget-object v0, Lgry;->j:[Lgry;

    invoke-virtual {v0}, [Lgry;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lgry;

    return-object v0
.end method


# virtual methods
.method public final b()Z
    .locals 1

    sget-object v0, Lgry;->c:Lgry;

    if-eq p0, v0, :cond_1

    sget-object v0, Lgry;->g:Lgry;

    if-eq p0, v0, :cond_1

    sget-object v0, Lgry;->e:Lgry;

    if-eq p0, v0, :cond_1

    sget-object v0, Lgry;->f:Lgry;

    if-eq p0, v0, :cond_1

    sget-object v0, Lgry;->a:Lgry;

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method
