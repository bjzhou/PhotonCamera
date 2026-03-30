.class public final enum Lj$/nio/file/a;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum EXECUTE:Lj$/nio/file/a;

.field public static final enum READ:Lj$/nio/file/a;

.field public static final enum WRITE:Lj$/nio/file/a;

.field private static final synthetic a:[Lj$/nio/file/a;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/4 v0, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    new-instance v3, Lj$/nio/file/a;

    const-string v4, "READ"

    invoke-direct {v3, v4, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lj$/nio/file/a;->READ:Lj$/nio/file/a;

    new-instance v4, Lj$/nio/file/a;

    const-string v5, "WRITE"

    invoke-direct {v4, v5, v1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lj$/nio/file/a;->WRITE:Lj$/nio/file/a;

    new-instance v5, Lj$/nio/file/a;

    const-string v6, "EXECUTE"

    invoke-direct {v5, v6, v0}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lj$/nio/file/a;->EXECUTE:Lj$/nio/file/a;

    const/4 v6, 0x3

    new-array v6, v6, [Lj$/nio/file/a;

    aput-object v3, v6, v2

    aput-object v4, v6, v1

    aput-object v5, v6, v0

    sput-object v6, Lj$/nio/file/a;->a:[Lj$/nio/file/a;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lj$/nio/file/a;
    .locals 1

    const-class v0, Lj$/nio/file/a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lj$/nio/file/a;

    return-object p0
.end method

.method public static values()[Lj$/nio/file/a;
    .locals 1

    sget-object v0, Lj$/nio/file/a;->a:[Lj$/nio/file/a;

    invoke-virtual {v0}, [Lj$/nio/file/a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lj$/nio/file/a;

    return-object v0
.end method
