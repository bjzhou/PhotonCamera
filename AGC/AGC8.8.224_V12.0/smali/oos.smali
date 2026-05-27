.class public final Loos;
.super Ljava/lang/Object;

# interfaces
.implements Loro;


# static fields
.field public static final a:Loos;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Loos;

    invoke-direct {v0}, Loos;-><init>()V

    sput-object v0, Loos;->a:Loos;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 1

    const-string v0, "Active"

    return-object v0
.end method
