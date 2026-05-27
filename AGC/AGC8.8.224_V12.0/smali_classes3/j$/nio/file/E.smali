.class final Lj$/nio/file/E;
.super Ljava/lang/Object;

# interfaces
.implements Lj$/nio/file/H;


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/Class;


# direct methods
.method constructor <init>(Ljava/lang/Class;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lj$/nio/file/E;->a:Ljava/lang/String;

    iput-object p1, p0, Lj$/nio/file/E;->b:Ljava/lang/Class;

    return-void
.end method


# virtual methods
.method public final name()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lj$/nio/file/E;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lj$/nio/file/E;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final type()Ljava/lang/Class;
    .locals 1

    iget-object v0, p0, Lj$/nio/file/E;->b:Ljava/lang/Class;

    return-object v0
.end method
