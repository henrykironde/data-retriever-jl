module retriever
using PyCall

@pyimport retriever

function check_for_updates()
    """Check scripts for updates."""
    retriever.check_for_updates()
end

function dataset_names()
    """Return list of all available dataset names."""
    retriever.dataset_names()
end

function download(dataset; path::AbstractString="./", quite::Bool=false,
                subdir::Bool=false, use_cache::Bool=false, debug::Bool=false)
    """Download scripts for retriever."""
    retriever.download(dataset, path, quite, subdir, debug, use_cache)
end

function install_csv(dataset; table_name=nothing, compile::Bool=false,
                debug::Bool=false, quite::Bool=false, use_cache::Bool=true)
    """Install scripts in csv."""
    retriever.install_csv(dataset, table_name, compile, debug, quite, use_cache)
end

function install_mysql(dataset; user::AbstractString="root",
                password::AbstractString="", host::AbstractString="localhost",
                port::Int=3306, database_name=nothing, table_name=nothing,
                compile::Bool=false, debug::Bool=false, quite::Bool=false,
                use_cache::Bool=true)
    """Install scripts in mysql."""
    retriever.install_mysql(dataset, user, password, host, port, database_name,
                     table_name, compile, debug, quite, use_cache)
end

function install_postgres(dataset; user::AbstractString="postgres",
                password::AbstractString="", host::AbstractString="localhost",
                port::Int=5432, database::AbstractString="postgres",
                database_name=nothing, table_name=nothing, compile::Bool=false,
                debug::Bool=false, quite::Bool=false, use_cache::Bool=true)
    """Install scripts in postgres."""
    retriever.install_postgres(dataset, user, password, host, port, database,
                        database_name, table_name, compile, debug, quite,
                        use_cache)
end

function install_sqlite(dataset; file=nothing, table_name=nothing,
                compile::Bool=false, debug::Bool=false, quite::Bool=false,
                use_cache::Bool=true)
    """Install scripts in sqlite."""
    retriever.install_sqlite(dataset, file, table_name, compile, debug, quite,
                      use_cache)
end

function install_msaccess(dataset; file=nothing, table_name=nothing,
                compile::Bool=false, debug::Bool=false, quite::Bool=false,
                use_cache::Bool=true)
    """Install scripts in msaccess."""
    retriever.install_msaccess(dataset, file, table_name, compile, debug, quite,
                        use_cache)
end

function install_json(dataset; table_name=nothing, compile::Bool=false,
                debug::Bool=false, quite::Bool=false, use_cache::Bool=true)
    """Install scripts in json."""
    retriever.install_json(dataset, table_name, compile, debug, quite, use_cache)
end

function install_xml(dataset; table_name=nothing, compile::Bool=false,
                debug::Bool=false, quite::Bool=false, use_cache::Bool=true)
    """Install scripts in xml."""
    retriever.install_xml(dataset, table_name, compile, debug, quite, use_cache)
end

function reset_retriever(; scope::AbstractString="all")
    """Remove stored information on scripts, data, and connection."""
    retriever.reset_retriever(scope)
end

end # module
