.class public final Llsw;
.super Llsh;


# static fields
.field public static final a:Llsw;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Llsw;

    invoke-direct {v0}, Llsw;-><init>()V

    sput-object v0, Llsw;->a:Llsw;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Llsh;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/io/IOException;Llhe;)Lnou;
    .locals 0

    invoke-static {p1}, Lnsy;->A(Ljava/lang/Throwable;)Lnou;

    move-result-object p1

    return-object p1
.end method
