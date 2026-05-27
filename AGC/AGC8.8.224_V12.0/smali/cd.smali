.class public Lcd;
.super Ljava/lang/Object;


# static fields
.field public static final synthetic a:I

.field private static final b:Lxf;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lxf;

    invoke-direct {v0}, Lxf;-><init>()V

    sput-object v0, Lcd;->b:Lxf;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/ClassLoader;Ljava/lang/String;)Ljava/lang/Class;
    .locals 2

    sget-object v0, Lcd;->b:Lxf;

    invoke-virtual {v0, p0}, Lxf;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lxf;

    if-nez v1, :cond_0

    new-instance v1, Lxf;

    invoke-direct {v1}, Lxf;-><init>()V

    invoke-virtual {v0, p0, v1}, Lxf;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-virtual {v1, p1}, Lxf;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    invoke-static {p1, v0, p0}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {v1, p1, p0}, Lxf;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0

    :cond_1
    return-object v0
.end method


# virtual methods
.method public b(Ljava/lang/String;)Lbw;
    .locals 0

    const/4 p1, 0x0

    throw p1
.end method
