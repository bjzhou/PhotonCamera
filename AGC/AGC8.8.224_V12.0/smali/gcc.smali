.class public final enum Lgcc;
.super Ljava/lang/Enum;


# static fields
.field public static final enum a:Lgcc;

.field public static final enum b:Lgcc;

.field public static final enum c:Lgcc;

.field private static final synthetic f:[Lgcc;


# instance fields
.field public final d:Ljava/lang/String;

.field public final e:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    new-instance v0, Lgcc;

    const-string v1, "AUTO"

    const/4 v2, 0x0

    const-string v3, "auto"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v2, v3, v4}, Lgcc;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lgcc;->a:Lgcc;

    new-instance v1, Lgcc;

    const-string v3, "OFF"

    const/4 v5, 0x1

    const-string v6, "off"

    invoke-direct {v1, v3, v5, v6, v5}, Lgcc;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v1, Lgcc;->b:Lgcc;

    new-instance v3, Lgcc;

    const-string v6, "ON"

    const-string v7, "on"

    const/4 v8, 0x3

    invoke-direct {v3, v6, v4, v7, v8}, Lgcc;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v3, Lgcc;->c:Lgcc;

    new-array v6, v8, [Lgcc;

    aput-object v0, v6, v2

    aput-object v1, v6, v5

    aput-object v3, v6, v4

    sput-object v6, Lgcc;->f:[Lgcc;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lgcc;->d:Ljava/lang/String;

    iput p4, p0, Lgcc;->e:I

    return-void
.end method

.method public static a(Ljava/lang/String;Lgcc;)Lgcc;
    .locals 2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lgcc;->a:Lgcc;

    iget-object v1, v0, Lgcc;->d:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_0
    sget-object v0, Lgcc;->b:Lgcc;

    iget-object v1, v0, Lgcc;->d:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-object v0

    :cond_1
    sget-object v0, Lgcc;->c:Lgcc;

    iget-object v1, v0, Lgcc;->d:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    return-object v0

    :cond_2
    return-object p1
.end method

.method public static values()[Lgcc;
    .locals 1

    sget-object v0, Lgcc;->f:[Lgcc;

    invoke-virtual {v0}, [Lgcc;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lgcc;

    return-object v0
.end method
