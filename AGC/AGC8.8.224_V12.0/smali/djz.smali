.class final Ldjz;
.super Ljava/lang/Object;

# interfaces
.implements Lkap;


# instance fields
.field final synthetic a:Lkaq;


# direct methods
.method public constructor <init>(Lkaq;)V
    .locals 0

    iput-object p1, p0, Ldjz;->a:Lkaq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Lkaq;
    .locals 1

    iget-object v0, p0, Ldjz;->a:Lkaq;

    invoke-interface {v0, p1}, Lkaq;->a(Ljava/lang/String;)Lkaq;

    move-result-object p1

    return-object p1
.end method
