.class public final Lelr;
.super Ljava/lang/Object;

# interfaces
.implements Logk;


# instance fields
.field private final a:Lgxb;


# direct methods
.method public constructor <init>(Lgxb;[B[B[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lelr;->a:Lgxb;

    return-void
.end method


# virtual methods
.method public final a()Lei;
    .locals 1

    iget-object v0, p0, Lelr;->a:Lgxb;

    invoke-virtual {v0}, Lgxb;->r()Lei;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic get()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lelr;->a()Lei;

    move-result-object v0

    return-object v0
.end method
